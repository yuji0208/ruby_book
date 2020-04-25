# module Greeter
#   def hello
#     'Hello!'
#   end
# end

# モジュールをクラスにincludeする
# メソッドが呼ばれたタイミングでログを残そうとする２つのクラス
# class Product
#   def title
#     log 'title is called.'
#     'A great movie'
#   end
#   private
#   def log(text)
#     # 本来であれば標準ライブラリのLoggerクラスなどを使うべきだが、簡易的にputsで済ませる
#     puts "[LOG] #{text}"
#   end
# end
# class User
#   def name
#     log 'name is called.'
#     'Alice'
#   end
#   private
#   # このメソッドの実装はProductクラスのlogメソッドと同じ
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end
# product = Product.new
# puts product.title
# # =>[LOG]title is called.
# # "A great movie"
# user = User.new
# puts user.name
# =>[LOG]name is called.
# "Alice"

# ログ出力用のメソッドを提供するモジュール
# ログを出力できる（log＋able）という意味で、Logable
# module Logable
#   private
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end
# class Product
#   # 上で作ったモジュールをincludeする
#   include Logable
#   def title
#     # logメソッドはLogableモジュールで定義したモジュール
#     log 'title is called.'
#     'A great movie'
#   end
# end
# class User
#   # こちらも同様にinclude
#   include Logable
#   def name
#     # Logableモジュールのメソッドが使える
#     log 'name is called.'
#     'Alice'
#   end
# end
# product = Product.new
# puts product.title
# user = User.new
# puts user.name
# puts product.log 'public?'

# モジュールをextendする
# module Loggable
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end
# class Product
#   # Logableモジュールのメソッドを特異メソッドとしてミックスイン
#   extend Loggable
#   def self.create_products(names)
#     # logメソッドをクラスメソッド内で呼び出す
#     # つまりlogメソッド自体もクラスメソッドになっている
#     log 'create_products is called.'
#     # 他の実装は省略
#   end
# end
# # クラスメソッド経由でlogメソッドが呼び出される。
# puts Product.create_products([])#=>[LOG]create_products is called.
# # Productクラスのクラスメソッドとして直接呼び出せる
# puts Product.log('Hello!')#=>[LOG]Hello!
