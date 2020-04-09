# def add(a, b)
#   a + b #戻り値：最後に評価された式
# end
# puts add(1, 2)

# def hello_world
#   'Hello World!'
# end
# puts hello_world

#デフォルト値なしの引数
# def greeting(country)
#   if country == 'japan'
#     'こんにちは'
#   else
#     'Hello'
#   end
# end
# puts greeting('japan')
# puts greeting('US')

#デフォルト値付きの引数
# def greeting(country = 'japan')
#   if country == 'japan'
#     'こんにちは'
#   else
#     'Hello'
#   end
# end
# puts greeting　#デフォルト値によりjapanは設定済み故、出力する際japanの出力不要
# puts greeting('US')

# def default_args(a, b, c = 0, d = 0) #デフォルト値設定
#   "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
# end
# puts default_args(1,2,3,4) #デフォルト値の更新

# デフォルト値に動的に変わる値などを設定
# def foo(time = Time.now, message = bar)
#   puts "time: #{time}, message: #{message}"
# end
# def bar
#   'BAR'
# end
# foo

# !で終わるメソッド
s = 'ruby'
def reverse_upcase!(s)
  s.reverse!.upcase!
end
puts reverse_upcase!(s)
puts s
