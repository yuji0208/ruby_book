# p147~p150
# ハッシュリテラルの{}
# h = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# puts h
# ブロックを作成する{}
# [1, 2, 3].each { |n| puts n}

#要素の追加
# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# currencies['italy'] = 'euro' #ハッシュ[キー] = 値
# puts currencies =>{"japan"=>"yen", "us"=>"dollar", "india"=>"rupee", "italy"=>"euro"}

# すでに値がある場合は上書きされる＝変更（更新）
# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# currencies['japan'] = '円'
# puts currencies =>{"japan"=>"円", "us"=>"dollar", "india"=>"rupee"}

# 値の取得
# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# puts currencies['india'] =>rupee
# puts currencies['brazil']

# ハッシュを使った繰り返し処理
# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# （パターン１）
# currencies.each do |key, value| #ブロック引数
#   puts "#{key}: #{value}"
# end
#（パターン２）上記の繰り返し処理をブロック引数１つで表現
# currencies.each do |key_value|
#   key = key_value[0]
#   value = key_value[1]
#   puts "#{key}: #{value}"
# end

# 要素の削除(irbで確認)
# currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
# currencies.delete('italy') => nil
# ブロックを渡すとキーが見つからない時の戻り値を作成可能
# currencies.delete('italy') { |key| "Not found: #{key}"}
# puts currencies => "Not found: italy"
