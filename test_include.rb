require '/Users/me/Projects/test-ruby/module_container'

class NeededForInclude
  include Modular

  def tester_printer
    instance_printer
    Modular.class_printer
    class_printer
  end
end

NeededForInclude.new.tester_printer
