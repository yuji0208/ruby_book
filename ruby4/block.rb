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
# sum = 0
# numbers.each do |n|
#   sum_value = n.even? ? n * 10 : n
#   sum += sum_value #sum=sum+sum_value
# end
# puts sum

#mapメソッド（エイリアスメソッドはcollect）<=eachメソッドの次に使用頻度が高い
# numbers = [1,2,3,4,5]
# new_numbers = []#新しい配列
# numbers.each { |n| new_numbers << n * 10 }#numbersの値を１０倍してnew_numbersという新たな配列に返す
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
numbers = [1,2,3,4]
sum = numbers.inject(0) { |result, n| result + n }
puts sum
