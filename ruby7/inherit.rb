# クラスの継承
# class User
#   user = User.new
#   # puts user.class #=> User
#   # puts user.instance_of?(User) # => true
#   # puts user.instance_of?(String) # => fasle
#   # instance_of?はクラスが全く同じでないとtrueにならない
#   puts user.instance_of?(Object) #=>false
#   # is_a?はis-a関係にあればtrueになる
#   puts user.is_a?(User) #=>true
#   puts user.is_a?(Object) #=>true
#   puts user.is_a?(BasicObject) #=>true
#   # is-a関係に無いものは、false
#   puts user.is_a?(String) #=>false
# end
# スーパークラス
# class Product #商品名(name),価格(price)
#   attr_reader :name, :price
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
# end
# product = Product.new('A great movie', 1000)
# puts product.name #=>"A great movie"
# puts product.price #=>1000
# サブクラス
# class DVD < Product #再生時間(running_time)
#   # name, priceはスーパークラスで定義してあるので不要
#   attr_reader :running_time
#   def initialize(name, price, running_time)
#     # スーパークラスにも存在する属性
#     @name = name
#     @price = price
#     # サブクラス独自の属性
#     @running_time = running_time
#   end
# end

# super
# class DVD < Product
#   attr_reader :running_time
#   def initialize(name, price, running_time)
#     # スーパークラスのinitializeメソッドを呼び出す
#     super(name, price)
#     @running_time = running_time
#   end
# end
# dvd = DVD.new('A great movie', 1000, 120)
# puts dvd.name #=>"A great movie"
# puts dvd.price #=> 1000
# puts dvd.running_time #=> 120

# super(引数同じ数)
# class DVD < Product
#   def initialize(name, price)
#     # 引数をすべてスーパークラスのメソッドに渡す
#     super
#   end
# end
# dvd = DVD.new('A great movie', 1000)
# puts dvd.name #=>"A great movie"
# puts dvd.price #=>1000

# class DVD <Product
#   # サブクラスで特別な処理をしないなら、同名のメソッドを定義する必要はない
#   # スーパークラスに処理を任せる
# end
# # DVDクラスをnewすると、自動的にスーパークラスのinitializeメソッドが呼び出される。
# dvd = DVD.new('A great movie', 1000)
# puts dvd.name #=>"A great movie"
# puts dvd.price #=> 1000

# メソッドのオーバーライド
# class Product
#   attr_reader :name, :price
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
#   # Productクラス内でto_sメソッドをオーバーライド
#   def to_s
#     "names: #{name}, price: #{price}"
#   end
# end
# class DVD < Product
#   attr_reader :running_time
#   def initialize(name, price, running_time)
#     super(name, price)
#     @running_time = running_time
#   end
#   # DVDクラスでは再生時間が表示されていません。
#   # 再生時間も表示されるようにDVDクラスでもto_sメソッドをオーバーライドする
#   def to_s
#     # "names: #{name}, price: #{price}, running_time: #{running_time}"
#     "#{super}, running_time: #{running_time}"
#   end
# end
# product = Product.new('A great movie', 1000)
# # to_sメソッドはオブジェクトの内容を文字列に変換
# # to_sメソッドはObjectクラスで定義されているので、すべてのオブジェクトでto_sメソッドを呼び出せる
# puts product.to_s
# dvd = DVD.new('An awesome film', 3000, 120)
# puts dvd.to_s

# クラスメソッドの継承
class Foo
  def self.hello #クラスメソッド
    'hello'
  end
end
class Bar < Foo
end
puts Foo.hello
puts Bar.hello
