class Ticket
  # fare（運賃）とstamp_at（乗車駅）が外部から取得できるようにゲッターメソッドを追加
  attr_reader :fare, :stamp_at

  def initialize(fare)
    @fare = fare
  end
# stampメソッドに駅名を渡すとその駅名がTicketクラスのインスタンスに保持される。
  def stamp(name)
    # stamp_atというインスタンス変数に駅名を格納しておく（乗車駅）
    @stamp_at = name
  end
end
