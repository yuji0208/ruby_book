def to_hex(r, g, b)
  # '#000000'#テストコードが機能しているかの確認
  # '#' +
  # r.to_s(16).rjust(2, '0') +
  # g.to_s(16).rjust(2, '0') +
  # b.to_s(16).rjust(2, '0')

  #上記の3行を１つにまとめる(DRY原則＝繰り返しを避ける)
  # hex = '#' #hexを変数として定義
  # [r, g, b].each do |n|
  #   hex += n.to_s(16).rjust(2, '0') # hex = hex + n.to_s(16).rjust(2, '0')
  # end
  # hex

  #injectメソッドでさらに簡略化
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  #[0, 0, 0]
  # r = hex[1..2]
  # g = hex[3..4]
  # b = hex[5..6]
  # ints = []
  # [r, g, b].each do |s|
  #   ints << s.hex
  # end
  # ints

  #mapメソッド：空の配列を用意して、他の配列をループ処理した結果を空の配列に詰め込んでいく
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map do |s|
    s.hex
  end
end
