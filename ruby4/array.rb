# a = [1,2,3,4,5]
# puts a[1, 3] #配列[インデックス番号, 取得する長さ（個数）]
# puts a.values_at(0, 2, 4) #values_atメソッドで取得したい要素のインデックス番号を複数指定可能
# puts a[a.size - 2,]
# puts a.last #配列の最後の要素を取得
# puts a.last(2)
# puts a.first
# puts a.first(2)

# a = [1,2,3]
# b = [3,4,5]
# puts a | b #和集合：２つの配列の要素を全て集め、重複しないように返す
# puts a - b #差集合：左の配列から、右の配列に含まれる要素を取り除く
# puts a & b #積集合：２つの配列の共通要素を返す
#Setクラスを使う方が効率的
# require 'set'
# a = Set.new([1,2,3])
# b = Set.new([3,4,5])
# puts a | b
# puts a - b
# puts a & b


#戻り値を配列のまま受け取る
# quo_rem = 14.divmod(3)
# puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

#多重代入で別々の変数として受け取る
# quotient, remainder = 14.divmod(3)
# puts "商=#{quotient}, 余り=#{remainder}"
