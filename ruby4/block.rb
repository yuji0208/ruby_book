# numbers = [1, 2, 3, 4]
# sum = 0
# numbers.each do |n| #n=ブロック引数＝eachメソッドから渡された配列の要素が入る（命名は自由）
#   puts sum += n #sum = sum + n
# end #doからendまでがブロックの範囲

# a=[1,2,3,1,2,3]
# #配列から値が奇数の要素を削除する
# a.delete_if do |n|
#   n.odd? #ブロックの戻り値＝メソッド同様に、最後に評価された式
# end
# puts a#配列から奇数の要素が削除される
#delete_ifメソッドはブロックの戻り値をチェックし、その戻り値が"真"であれば、ブロックに渡した要素を配列から削除し、
#"偽"であれば配列に削除せず、そのまま残す

# numbers = [1, 2, 3, 4]
# sum = 0 #sumはブロック外部で定義されているので、ブロックの内外問わず使える
# numbers.each do |n|
#   sum_value = n.even? ? n * 10 : n
#   sum += sum_value #sum=sum+sum_value
# end
# puts sum

#mapメソッド（エイリアスメソッドはcollect）<=eachメソッドの次に使用頻度が高い
# numbers = [1,2,3,4,5]
# new_numbers = []#新しい配列
# numbers.each { |n| new_numbers << n * 10 }#numbersの値を１０倍してnew_numbersという新たな配列に返す
# new_numbers = numbers.map { |n| n * 10 } #mapメソッドの適用
# puts new_numbers

#select/find_all
#（例）偶数の数値だけを集めた配列を新たに作る
#numbers = [1,2,3,4,5,6]
#ブロックの戻り値が真になった要素のみ集められる
# even_numbers = numbers.select { |n| n.even? } #nは偶数ですか？
# puts even_numbers #真（偶数）の場合に出力される

#reject =>selectメソッドの反対で、ブロックの戻り値が偽である要素を集めるメソッド
# numbers = [1,2,3,4,5,6]
#3の倍数を除外する（３の倍数以外を集める）
# non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
# puts non_multiples_of_three

#find/detect
#ブロックの戻り値が真になった最初の要素を返す
# numbers = [1,2,3,4,5,6]
#ブロックの戻り値が最初に真になった最初の要素を返す
# even_number = numbers.find { |n| n.even? }
# puts even_number

#inject/reduce
# numbers = [1,2,3,4]
# sum = numbers.inject(0) { |result, n| result + n }
# puts sum

#each_with_index
# fruits = ['apple', 'orange', 'melon']
#ブロック引数のiには、0,1,2...と要素の添え字が入る
# fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}"}
#添え字を０以外（今回は１）から始める
# fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}"}

#with_indexメソッド
#mapメソッド＋with_indexメソッド
# fruits = ['apple', 'orange', 'melon']
# mapとして処理しつつ、添え字も受け取る
# fruits.map.with_index { |fruit, i| puts "#{i}: #{fruit}"}

#delete_if + with_index
# fruits = ['apple', 'orange', 'melon']
#名前に"a"を含み、かつ添え字が奇数である要素を削除
# fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
# puts fruits

#配列がブロック引数に渡される場合
# dimentions = [
#   #[縦, 横]
#   [10, 20],
#   [30, 40],
#   [50, 60],
# ]
#面積の計算結果を格納する配列
# areas = []
#ブロック引数が1個であれば、ブロック引数の値が配列になる
# dimentions.each do |d|
#   length = d[0]
#   width = d[1]
#ブロック引数を２つにし、縦と横の値を別々に受け取ることができる（簡略化）
# dimentions.each do |length, width|
#   areas << length * width
# end
# puts areas

# each_with_indexのように元からブロック引数を２つ受け取る場合
dimentions = [
    #[縦, 横]
    [10, 20],
    [30, 40],
    [50, 60],
]
# dimentions.each_with_index do |length, width, i|
#   puts "length: #{length}, width: #{width}, i: #{i}"
# end
#これだとlengthに配列が丸ごと入っており、ブロック引数の割り当てにズレが発生=>ブロック引数を２つにする
# dimentions.each_with_index do |dimention, i|
#   #配列から縦と横の値を取り出す
#   length = dimention[0]
#   width = dimention[1]
#一気にブロック引数で受け取る
dimentions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
