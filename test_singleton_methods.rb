class Foo
  def hi
    'hi'
  end
end

f = Foo.new
b = Foo.new

class << f
  def hallo
    'hallo'
  end
end

puts f.hi
puts f.hallo
puts b.hi

begin
  puts b.hallo
rescue NoMethodError
  puts 'only f eigenclass was altered'
  puts 'Thus hallo is a singleton method only for f, not b'
end
