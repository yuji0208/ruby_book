# (例題)〜長さの単位変換プログラム〜
# ・m(メートル),ft(フィート),in(インチ)の単位を相互に変換する
# ・第１引数に変換元の長さ(数値)、第２引数に変換元の単位、第３引数に変換後の単位を指定する
# ・メソッドの戻り値は変換後の長さ(数値)とする。端数が出る場合は小数第３位で四捨五入する

# メートルとその他の単位との比率を定義し、そのハッシュを用いて、単位を変換する。
# 返還後の長さの求め方：変換前の単位の長さ(length) / 変換前の単位の比率(unit_from) * 変換後の単位の比率(unit_to)
# units = { 'm' => 1.0, 'ft' => 3,28, 'in' => 39,37 }
# ハッシュはとくにキーや値が追加や変更されったりしないので、メソッドを実行するたびに作り直す必要はない
# このようなオブジェクトはメソッドの外で定数として保持しておく方が実行効率が良い
UNITS = { m: 1.0, ft: 3.28, in: 39.37 }

def convert_length(length, from: :m, to: :m)
  # 39.37
  (length / UNITS[from] * UNITS[to]).round(2)
  # units[unit_from]やunits[unit_to]で各単位の比率をハッシュから取得している
  # round(2)で四捨五入している:roundメソッドが四捨五入で引数で桁数を指定
end
