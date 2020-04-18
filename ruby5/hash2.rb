# 続・ハッシュについてp153~p156
# ハッシュのキーにシンボルを使う
# currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee'}
# currencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
# currencies = {japan: :yen, us: :dollar, india: :rupee}
# => {:japan => :yen, :us => :dollar, :india => :rupee}
# puts currencies[:us] => dollar

# 新しいキーと値の組み合わせを追加
# currencies[:italy] = 'euro'
# puts currencies

# hash = { 'abc' => 123, def: 456 }
# # 値を取得する場合はデータ型をわせてキーを指定する
# puts hash['abc'] => 123
# puts hash[:def] => 456
# # データ型が異なると値の取得はできない
# puts hash[:abc] => nil
# puts hash['def'] => nil

# ハッシュ内の値が異なるデータ型
# person = {
#   # 値が文字列
#   name: 'Alice',
#   # 値が数値
#   age: 20,
#   # 値が配列
#   friends: ['Bob', 'Carol'],
#   # 値がハッシュ
#   phones: { home: '1234-0000', mobile: '5678-0000'}
# }
# puts person[:name]
# puts person[:age]
# puts person[:friends]
# puts person[:phones][:mobile]

# メソッドのキーワード引数とハッシュ
# def buy_burger(menu, drink: true, potato: true)
# end
# puts buy_burger('cheese', drink: true, potato: true)
# drinkもpotatoもデフォルト値'true'を使う場合
# puts buy_burger('cheese')
# puts buy_burger('fish', drink: true, potato: false)
# drink: trueはデフォルト値で設定済
# puts buy_burger('fish', potato: false)
