# p233 ~ p
# selfキーワード
# class User
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
#   def hello
#     # selfなしでnameメソッドを呼び出す
#     "Hello! I am #{name}."
#   end
#   def hi
#     # selfありで、nameメソッドを呼び出す
#     "Hello! I am #{self.name}."
#   end
#   def my_name
#     # 直接インスタンス変数の@nameにアクセスする
#     "My name is #{@name}."
#   end
# end
# user = User.new('Alice')
# puts user.hello Hello! I am Alice
# puts user.hi Hello! I am Alice
# puts user.my_name My name is Alice

# クラスメソッドやクラス構文直下のself
# class Foo
#   # 29行目のputsはクラス定義の読み込み時に呼び出される
#   puts "クラス構文直下のself: #{self}" #=>Foo
#   # クラスメソッド：self.クラスメソッド
#   def self.bar
#     puts "クラスメソッド内のself: #{self}" #=>Foo
#   end
#   # インスタンスメソッド：クラス内のメソッド
#   def baz
#     puts "インスタンスメソッド内のself: #{self}" #=><Foo:0x00007f9432901c30>
#   end
# end
# # =>クラス構文直下のself: Foo
# # クラスメソッドの呼び出し
# Foo.bar # =>クラスメソッド内のself: Foo
# foo = Foo.new
# foo.baz # =>インスタンスメソッド内のself:

# クラスメソッドをインスタンスメソッドで呼び出す
class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  # 金額を整形するクラスメソッド
  def self.format_price(price)
    "#{price}円"
  end
  def to_s
    # インスタンスメソッドからクラスメソッドを呼び出す
    # formatted_priceというローカル変数を定義
    formatted_price = Product.format_price(price)
    "name: #{name}, price: #{formatted_price}"
  end
end
product = Product.new('A great movie', 1000)
puts product.to_s
