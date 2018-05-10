puts 'hello, from module container'

module Modular
  def instance_printer
    puts 'instance printer hello'
  end

  def self.class_printer
    puts 'class printer hello'
  end
end
