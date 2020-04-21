# p206 ~ 220
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

# クラスの定義p212~
# class OrderItem
# end

# オブジェクトの作成、またinitializeメソッド
# class User
#   def initialize
#     puts 'initialized.'
#   end
# end
# User.new #オブジェクトの作成

# initializeメソッドに引数をつける
# class User
#   def initialize(name, age)
#     puts "name: #{name}, age: #{age}"
#   end
# end
# User.new　=> 引数を付けていないのでエラーが発生
# User.new('Alice', 20) =>name: Alice, age: 20

# インスタンスメソッド
# class User
#   # インスタンスメソッドの定義
#   def hello
#     puts "Hello!"
#   end
# end
# user = User.new
# # インスタンスメソッドの呼び出し
# user.hello

# インスタンス変数とアクセサメソッド
# class User
#   def initialize(name)
#     # インスタンス作成時に渡された名前をインスタンス変数に保存する
#     @name = name
#   end
# # インスタンスメソッドの定義
#   def hello
#     # インスタンス変数に保存されている名前を表示
#     puts "Hello!, I am #{@name}."
#   end
# end
# # インスタンスの生成
# # initializeメソッドに引数があるので、newメソッドを呼び出す際も引数が必要
# user = User.new('Alice')
# bob = User.new('Bob')
# # インスタンスメソッドの実行（インスタンス.メソッド）
# user.hello

# class User
#   def initialize(name)
#     @name = name
#     # インスタンス変数は作成（値を代入）する前にいきなり参照してもエラーにならない
#     # まだ作成されていないインスタンス変数を参照した場合はnilが返る
#   end
#   def hello #インスタンスメソッド
#     # shuffled_nameはローカル変数
#     # ローカル変数は参照する前に必ず=で値を代入し作成する必要がある
#     shuffled_name = @name.chars.shuffle.join
#     puts "Hello!, I am #{shuffled_name}."
#   end
# end
# user = User.new('Alice') # インスタンスの生成
# user.hello # インスタンスの実行

# インスタンス変数を外部から参照、変更する方法
# class User
#   def initialize(name)
#     @name = name
#   end
#   # @nameを外部から参照するためのメソッド
#   def name
#     @name
#   end
#   # @nameを外部から変更するための方法
#   def name=(value)
#     @name = value
#   end
# end
# user = User.new('Alice')
# # 変数に代入しているように見えるが、実際はname=メソッドを呼び出している
# user.name = 'Bob'
# puts user.name

# attr_accessor
# class User
#   # @nameを読み書きするするメソッドが自動的に定義される
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
#   # nameメソッドやname=メソッドを明示的に定義する必要はない
# end
# user = User.new('Alice')
# # @nameを変更
# user.name ='Bob'
# # @nameを参照
# puts user.name

# 複数のインスタンス変数に対するアクセサメソッドの作成
# class User
#   attr_accessor :name, :age
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end
# user = User.new('Alice', 20)
# puts user.name
# puts user.age

# クラスメソッド
# （例）Userクラスにクラスメソッドの追加
# 名前の配列を渡すと、Userクラスのインスタンスを配列に入れて返すcreate_usersメソッドを定義
# class User
#   def initialize(name)
#     @name = name
#   end
#   # self.を付けてクラスメソッドの定義
#   def self.create_users(names)
#     # mapメソッドで各配列に対してブロックを評価した結果を新しい配列にして返す
#     names.map do |name|
#       User.new(name)
#     end
#   end
#   # 以下はインスタンスメソッド
#   def hello
#     "Hello!, I am #{@name}"
#   end
# end
# names = ['Alice', 'Bob', 'Carol']
# # クラスメソッドの呼び出し
# users = User.create_users(names) #クラス名.メソッド名
# users.each do |user|
#   # インスタンスメソッドの呼び出し
#   puts user.hello
# end

# 定数
# class Product
#   # デフォルトの価格を定数で定義
#   DEFAULT_PRICE = 0
#   def self.default_price
#     # クラスメソッドから定数を参照する
#     DEFAULT_PRICE
#   end
#   def default_price
#     # インスタンスメソッドから定数を参照する
#     DEFAULT_PRICE
#   end
# end
# # クラスメソッドの呼び出し
# puts Product.default_price #=> 0
# # インスタンスメソッドの呼び出し
# product = Product.new
# puts product.default_price #=> 0
