# pls execute me with ruby main.rb in the dir of the files, ruby being installed

require "#{Dir.pwd}/module_container"

class NeededForInclude
  include Modular

  def tester_printer
    instance_printer
    Modular.class_printer
    class_printer
  end
end

NeededForInclude.new.tester_printer
