# 1..5#最後の値を含む[1,2,3,4,5]
# 1...5#最後の値を含まない[1,2,3,4]
# a=[1,2,3,4,5]
# puts a[1..3]

#以上以下、以上未満
# def liquid?(temperature)
#   #0度以上100度未満であれば液体と判断したい
#   0 <= temperature && temperature < 100
# end
# puts liquid?(-1)
# puts liquid?(0)
# puts liquid?(99)
# puts liquid?(100)

#case文で使う
#年齢に応じて料金を判定するメソッド
# def charge(age)
#   case age #対象のオブジェクトや式
#   when 0..5 #0~5
#     0
#   when 6..12 #6~12
#     300
#   when 13..18 #13~18
#     600
#   else #それ以外
#     1000
#   end
# end
# puts charge(0)
# puts charge(5)
# puts charge(6)
# puts charge(12)
# puts charge(13)
# puts charge(18)
# puts charge(19)

#値が連続する配列の作成
# puts (1..5).to_a
# puts (1...5).to_a
# puts [*1..5]
# puts [*1...5]

#繰り返し処理を行う
# numbers = (1..4).to_a
# sum = 0
# numbers.each { |n| sum += n }
# puts sum

# sum = 0
#範囲オブジェクトに対して直接eachメソッドを呼び出す
# (1..4).each { |n| sum += n }
# puts sum

#step
numbers = []
#1~10まで２つ飛ばしで繰り返し処理
(1..10).step(2) { |n| numbers << n }
puts numbers
