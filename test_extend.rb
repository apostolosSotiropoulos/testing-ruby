# pls execute me with ruby main.rb in the dir of the files, ruby being installed

require "#{Dir.pwd}/module_container"

class NeededForExtend
  extend Modular
end

puts 'with EXTEND, extended instance methods are available as class methods i.e:'
NeededForExtend.instance_printer

begin
  NeededForExtend.new.instance_printer
rescue NoMethodError
  puts 'instances will NOT have the extended instance methods.'
end


begin
  NeededForExtend.new.class_printer
rescue NoMethodError
  puts 'instances will NOT have the extended class methods.'
end

begin
  NeededForExtend.class_printer
rescue NoMethodError
  puts 'the class will NOT have the extended class methods.'
end

puts 'extended class methods can be called namespaced. For example:'
Modular.class_printer
