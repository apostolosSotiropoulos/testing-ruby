module MyModule
  def hi
    'hi'
  end

  module ClassMethods
    def hallo
      'hallo'
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end
end

class Foo
  include MyModule
end

puts "class methods say #{Foo.hallo}"
puts "instance methods say #{Foo.new.hi}"
puts "instance can also call class method and say #{Foo.new.class.hallo}"
