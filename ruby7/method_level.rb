# p246 ~
# publicメソッド
# class User
#   # デフォルトはpublic
#   def hello
#     puts 'Hello!'
#   end
# end
# user = User.new
# # publicメソッドなので、クラス外部から呼び出せる。
# user.hello

# privateメソッド
# class User
#   # ここから下で定義されたメソッドはprivate
#   private
#   def hello
#     puts 'Hello!'
#   end
# end
# user = User.new
# # privateメソッドなのでクラス外部からは呼び出せない
# user.hello #=>エラー

# class User
#   def hello
#     # nameメソッドはprivateなのでselfをつけるとエラーが発生する
#     #  "Hello!, I am #{self.name}"
#     # self無しでnameメソッドを呼び出す
#     "Hello!, I am #{name}."
#   end
#   private
#   def name
#     'Alice'
#   end
# end
# user = User.new
# puts user.hello #=>Hello!, I am Alice.

# class Product
#   private
#   # これはprivateメソッドです
#   def name
#     'A great movie'
#   end
# end
# class DVD < Product
#   def to_s
#     # nameはスーパークラスのprivateメソッド
#     puts "name: #{name}"
#   end
# end
# dvd = DVD.new
# # サブクラス内部でスーパークラスのprivateを呼んでいるのでエラーにならない
# dvd.to_s
# class Product
#   def to_s
#     # nameは常に同じとは限らない
#     "name: #{name}"
#   end
#   private
#   def name
#     'A great movie'
#   end
# end
# class DVD < Product
#   private
#   # スーパークラスのprivateメソッドをオーバーライドする
#   def name
#     'An awesome film'
#   end
# end
# product = Product.new
# # Productクラスのnameメソッドが使われる。
# puts product.to_s

# dvd = DVD.new
# # オーバーライドしたDVDクラスのnameメソッドが使われる。
# puts dvd.to_s

# クラスメソッドをprivateメソッドにできる？
# class User
#   private
#   # クラスメソッドもprivateメソッドになる？
#   def self.hello
#     'Hello!'
#   end
# end
# クラスメソッドはprivateメソッドにならない！
# puts User.hello #=>Hello!

# クラスメソッドをprivateメソッドにする方法
# class User
#   class << self
#     # class << selfの構文ならクラスメソッドでもprivateが機能する
#     private
#     def hello
#       'Hello!'
#     end
# end
# puts User.hello #=>エラー
# またclass << selfを使わない場合は、private_class_methodでクラスメソッド定義後に公開レベルの変更
# class User
#   def self.hello
#     'Hello!'
#   end
#   # 後からクラスメソッドをprivateに変更
#   private_class_method :hello
# end
# puts User.hello #=>error

# 後からメソッドの公開レベルを変更する方法
# class User
#   # いったんpublicメソッドとして定義
#   def foo
#     'foo'
#   end
#   def bar
#     'bar'
#   end
#   # foo, barをprivateメソッドに変更
#   private :foo, :bar
#   # bazはpublicメソッド
#   def baz
#     'baz'
#   end
# end
# user = User.new
# puts user.foo #=>error
# puts user.bar #=>error
# puts user.baz #=>baz

# protectedメソッド
# class User
#   # weightは外部に公開しない
#   attr_reader :name
#   def initialize(name, weight)
#     @name = name
#     @weight = weight
#   end
#   # 自分がother_userより体重が重い場合はtrue
#   def heavier_than?(other_user)
#     other_user.weight < @weight
#   end
#   protected
#   # protectedメソッドなので同じクラスかサブクラスならばレシーバつきで呼び出せる
#   def weight
#     @weight
#   end
# end
# alice = User.new('Alice', 50)
# bob = User.new('Bob', 60)
# puts alice.heavier_than?(bob) #=>false
# puts bob.heavier_than?(alice) #=>true

# class Product
#   @@name = 'Product'
#   def self.name
#     @@name
#   end
#   def initialize(name)
#     @@name
#   end
#   def name
#     @@name
#   end
# end
# class DVD < Product
#   @@name = 'DVD'
#   def self.name
#     @@name
#   end
#   def upcase_name
#     @@name.upcase
#   end
# end
# # DVDクラスを定義したタイミングで@@nameがDVDに変更
# puts Product.name #=>DVD
# puts DVD.name #=>DVD

# product = Product.new('A great movie')
# puts product.name #=>A great movie

# # Product.newのタイミングで@@nameが"A great movie"に変更
# puts Product.name #=>A great movie
# puts DVD.name #=>A great movie

# dvd = DVD.new('An awesome film')
# puts dvd.name #=>An awesome film
# puts dvd.upcase_name #=>AN AWESOME MOVIE

# # DVD.newのタイミングで@@nameが"An awesome film"に変更
# puts product.name #=>An awesome film
# puts Product.name #=>An awesome film
# puts DVD.name #=>An awesome film
