# timesメソッド
# sum = 0
#処理を5回繰り返す。nには1,2,3,4が入る
# 5.times { |n| sum += n }
# puts sum => 10
#sumに１を加算する処理を5回繰り返す(sumに１を5回足す)
# 5.times { sum += 1}
# puts sum => 5

#uptoメソッド
# a = []
# 10.upto(14) { |n| a << n }
# puts a =>[10,11,12,13,14]

#downto
# a = []
# 14.downto(10) { |n| a << n }
# puts a =>[14,13,12,11,10]

#stepメソッド
# （例1）1から10まで２つずつ値を増やしながら処理する
# a = []
# 1.step(10, 2) { |n| a << n }
# puts a =>[1,3,5,7,9]
# (例２)　10から1まで2ずつ値を減らす
# a = []
# 10.step(1, -2) { |n| a << n }
# puts a =>[10,8,6,4,2]

#while文
# (ex)配列の要素の数が５つになるまで繰り返す
# a = []
# while a.size < 5
#   a << 1
# end
# puts a
# 1行で記述する方法
# a = []
# a << 1 while a.size < 5
# puts a

# どんな条件でも最低1回は実行したい場合は、begin .. endで囲み、その後に、whileを書く
# (ex)
# a = []
# while false
#   このコードは常に条件が”偽”になるので実行されない
#   a << 1
# end
# puts a
# begin
#   a << 1
# end while false
# puts a　=> 1

#until
# （例）配列の要素が３以下になるまで配列の要素を後ろから削除していく
# a = [10, 20, 30, 40, 50]
# until a.size <= 3
#   a.delete_at(-1)
# end
# puts a =>[10, 20, 30]

# for
# numbers = [1, 2, 3, 4]
# sum = 0
# for n in numbers
#   sum += n # sum = sum + n
# end
# puts sum => 10
# doを入れて１行で書くことも可能
# sum = 0
# for n in numbers do sum += n end
# puts sum => 10
# eachメソッドを使った書き方
# numbers = [1, 2, 3, 4]
# sum = 0
# numbers.each do |n|
#   sum += n
# end
# puts sum => 10

# loop
# （例）配列に格納した５つの数値の中からランダムに数値を選び、５が出たタイミングで脱出する無限ループ
numbers =[1,2,3,4,5]
# loop do
#   #sampleメソッドで配列の中からランダムに要素を１つ取得する
#   n = numbers.sample
#   puts n
#   #breakメソッドで無限ループから脱出
#   break if n == 5
# end
#while文での書き方
# while true
#   n = numbers.sample
#   puts n
#   break if n == 5
# end

# eachメソッド + break
# shuffleメソッドで配列の要素をランダムに並べ替える
# numbers = [1,2,3,4,5].shuffle
# numbers.each do |n|
#   puts n
#   # 5が出たら繰り返し脱出
#   break if n == 5
# end

# 繰り返し処理が入れ子になっている場合は、１番内側の繰り返し処理を脱出
# fruits = ['apple', 'melon', 'orange']
# numbers = [1, 2, 3]
# fruits.each do |fruit|
#   # 配列の数字をランダムに入れ替え、３が出たらbreakする
#   numbers.shuffle.each do |n|
#     puts "#{fruit}, #{n}"
#     # numberesのループは脱出するが、fruitsのループは継続する
#     break if n == 3
#   end
# end

#throwとcatchを使った大域脱出
# （例）"orange"と３の組み合わせが出たら、全ての繰り返し処理を脱出
# fruits = ['apple', 'melon', 'orange']
# numbers = [1, 2, 3]
# catch :done do
#   fruits.shuffle.each do |fruit|
#     numbers.shuffle.each do |n|
#       puts "#{fruit}, #{n}"
#       if fruit == 'orange' && n == 3
#         #全ての繰り返し処理を脱出
#         throw :done
#       end
#     end
#   end
# end

# next
#（例１）偶数であれば処理を中断し、次の繰り返し処理に進む
# number = [1,2,3,4,5]
# numbers.each do |n|
#   #偶数であれば処理を中断し、次の繰り返し処理に進む
#   next if n.even?
#   puts n
# end =>[1, 3, 5]
# （例２）
# fruits = ['apple', 'melon', 'orange']
# numbers = [1, 2, 3, 4]
# fruits.each do |fruit|
#   numbers.each do |n|
#     #繰り返し処理が入れ子の場合は、１番内側のループのみ中断される
#     next if n.even?
#     puts "#{fruit}, #{n}"
#   end
# end =>apple, 1 apple, 3 melon, 1 melon, 3 orange, 1 orange, 3

# redo
（例）３つの野菜に対して「好きですか？」と問いかけ、ランダムに「はい」または「いいえ」を答えるプログラム
foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
  print "#{food}は好きですか？ => "
  # sampleは配列からランダムに１要素を取得するメソッド
  answer = ['はい', 'いいえ'].sample
  puts answer
  # はいと答えなければ、もう一度聞き直す
  redo unless answer == 'はい'
end
状況によっては意図せずに無限ループになってしまうので、やり直しの回数を制限
foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？ => "
  #わざと「いいえ」しか答えないようにする
  answer = 'いいえ'
  puts answer

  count += 1
  #やり直しは2回まで
  redo if answer != 'はい' && count < 2

  #カウントをリセット
  count = 0
end
