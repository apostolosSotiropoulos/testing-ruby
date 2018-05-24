# pls execute me with ruby main.rb in the dir of the files, ruby being installed

require "#{Dir.pwd}/module_container"

puts 'by just using REQUIRE, class methods can be accessed namespaced i.e:'
Modular::class_printer
Modular.class_printer

begin
  Modular.instance_printer
rescue NoMethodError
  puts 'instance methods are NOT accessible namespaced.'
end
