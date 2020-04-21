class Gate
  # 駅名と運賃を配列として用意（定数）
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  # Gateクラスにinitializeメソッドを定義し、引数として駅の名前を受け取れるようにする。
  # 受け取った駅名はあとで使えるようにインスタンス変数に格納しておく
  def initialize(name)
    @name = name #インスタンス変数
  end
  def enter(ticket)
    # ticketクラスのstampメソッドを呼び出し、自分の駅名を渡す。
    ticket.stamp(@name)
  end
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    # 駅名の配列から乗車駅と降車駅を検索し、その添え字を取得する
    # indexメソッドは配列の中から引数に合致する要素の添え字を取得する。
    from = STATIONS.index(ticket.stamp_at) #乗車駅
    to = STATIONS.index(@name) #降車駅
    # 「降車駅の添え字ー乗車駅の添え字」で、区画の長さを取得する
    distance = to - from
    # 「区画の長さ−1」を添え字として運賃の配列から適切な運賃を取得する
    FARES[distance - 1]
  end
end
