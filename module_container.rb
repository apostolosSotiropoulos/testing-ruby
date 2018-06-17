puts 'hello, from module container'

# in rails no include / extend / require is required to call Modular.instance_printer
module Modular
  def instance_printer
    puts '- instance printer hello'
  end

  def self.class_printer
    puts '- class printer hello'
  end
end
