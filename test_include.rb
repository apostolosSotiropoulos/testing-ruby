# pls execute me with ruby main.rb in the dir of the files, ruby being installed

require "#{Dir.pwd}/module_container"

class NeededForInclude
  include Modular

  def tester_printer
    instance_printer
    class_printer
  end
end

puts 'with INCLUDE instances will have the included methods. For example:'
NeededForInclude.new.instance_printer

begin
  NeededForInclude.new.class_printer
rescue NoMethodError
  puts 'instances will NOT have the included class methods.'
end

begin
  NeededForInclude.class_printer
rescue NoMethodError
  puts 'the class will NOT have the included class methods.'
end

puts 'included class methods can be called namespaced. For example:'
Modular.class_printer
