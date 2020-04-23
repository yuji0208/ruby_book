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
# user.hello

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
