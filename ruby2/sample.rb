puts 1 + 2

a = 'Hello World!'
puts a

b = 'こんにちは'
puts b

def add(x, y)
  x + y
end
puts add(4, 5)
puts "hello!\nbye!"

name = 'Yuji'
puts "Hello!#{name}"#式展開

i = 10
puts "#{i}は16進数にすると#{i.to_s(16)}です。"
