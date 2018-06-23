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

## Rails way: 
# module MyModule
#   extend ActiveSupport::Concern

#   def test_instance_method
#     'instance_method'
#   end

#   class_methods do
#     def test_class_method
#       'class_method'
#     end
#   end
# end

# class Foo
#   include MyModule
# end

# puts "this is a #{Foo.test_class_method}"
# puts "this is a #{Foo.new.test_instance_method}"
