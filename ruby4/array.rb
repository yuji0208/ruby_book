a = [1,2,3,4,5]
# puts a[1, 3] #配列[インデックス番号, 取得する長さ（個数）]
# puts a.values_at(0, 2, 4) #values_atメソッドで取得したい要素のインデックス番号を複数指定可能
# puts a[a.size - 2,]
# puts a.last #配列の最後の要素を取得
# puts a.last(2)
puts a.first
puts a.first(2)

#戻り値を配列のまま受け取る
# quo_rem = 14.divmod(3)
# puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

#多重代入で別々の変数として受け取る
# quotient, remainder = 14.divmod(3)
# puts "商=#{quotient}, 余り=#{remainder}"
