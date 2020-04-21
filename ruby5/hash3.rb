# ハッシュについてもっと詳しく p162~p168

# currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }

# keys：ハッシュのキーを配列として返す
# puts currencies.keys => [:japan, :us, :india]

# values: ハッシュの値を配列として返す
# puts currencies.values => ["yen", "dollar", "rupee"]

# has_key?
# puts currencies.has_key?(:japan)
# puts currencies.has_key?(:italy)

# **引数
# def buy_burger(menu, drink: true, potato: true, **others)
#   # othersはハッシュとして渡される
#   puts others
# end
# buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)

# buy_burger('fish', {'drink' => true, 'potato' => false})
# # rubyでは、最後の引数がハッシュであれば、ハッシュリテラルの{}を省略できる
# buy_burger('fish', 'drink' => true, 'potato' => false)
# =>{"drink" => true, "potato" => false}
# buy_burger({'drink' => true, 'potato' => false}, 'fish')

# def buy_burger(options = {}, menu)
#   puts options
# end
# buy_burger({'drink' => true, 'potato' => false}, 'fish')

# to_aメソッド:ハッシュ => 配列
# currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
# puts currencies.to_a =>[[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]

# to_hメソッド: 配列 => ハッシュ
# array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
# puts array.to_h => {:japan => "yen", :us => "dollar", :india => "rupee"}

# h = Hash.new { 'hello' }
# a = h[:foo] => "hello"
# b = h[:bar] => "hello"
# # 変数aとbは異なるオブジェクト（ブロックの実行時に毎回新しい文字列が作成される）
# a.equal?(b) => false
# # 変数aに破壊的な変更を適用しても、変数bの値は変わらない
# a.upcase!
# a => "HELLO"
# b => "hello"
# # ハッシュは空のまま
# h => {}

# 初期値を返すだけでなく、ハッシュに指定されたキーと初期値を同時に設定する
# h = Hash.new { |hash, key| hash[key] = 'hello' }
# h[:foo] => "hello"
# h[:bar] => "hello"
# ハッシュにキーと値が追加される
# h => {:foo => "hello", :bar => "hello"}
