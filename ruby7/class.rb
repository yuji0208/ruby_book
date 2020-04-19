# ハッシュと配列で表示（クラスを使わない場合）
# ユーザーデータを作成
# users = []
# users << {first_name: 'Alice', last_name: 'Ruby', age: 20}
# users << {first_name: 'Bob', last_name: 'Python', age: 30}
# users[0][:country] = 'japan'
# users[0][:first_name] = 'Carol'
# puts users[0]
# ユーザーデータを表示
# users.each do |user|
#   puts "氏名: #{user[:first_name]} #{user[:last_name]}, 年齢: #{user[:age]}"
# end
# 氏名についてはメソッドを作っておくと、他にも氏名を使う場面が出てきたときに便利
# def full_name(user)
#   "#{user[:first_name]} #{user[:last_name]}"
# end
# ユーザーデータを再度表示
# users.each do |user|
#   puts "氏名: #{full_name(user)}, 年齢: #{user[:age]}"
# end

# クラスを使って表示（Userクラスの導入）
# class User
#   attr_reader :first_name, :last_name, :age
#   # attr_readerはインスタンス変数の呼び出し専用
#   def initialize(first_name, last_name, age)
#     # インスタンス変数(@変数名)に値をセットする
#     @first_name = first_name
#     @last_name = last_name
#     @age = age
#   end
#   # 氏名を作成するメソッド
#   def full_name
#     "#{first_name} #{last_name}"
#   end
# end
# # ユーザーデータの作成
# users = []
# users << User.new('Alice', 'Ruby', 20)
# users << User.new('Bob', 'Python', 30)
# # ユーザーデータを表示
# users.each do |user|
#   puts "氏名: #{user.full_name}, 年齢: #{user.age}"
# end
# =>氏名:Alice Ruby, 年齢: 20, 氏名: Bob Python, 年齢: 30
