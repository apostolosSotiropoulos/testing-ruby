class Printer
  def initialize(printable)
    @printable = printable
  end

  def print_preview
    puts '-> starting the printing preview...'
    @printable.print_preview
    puts '-> happy with the preview? shall I print now?'
  end

  def print
    puts '-> initializing...'
    puts '-> ...printing'
    @printable.print
    puts '-> print successful'
  end
end

module PreviewLess
  def print_preview
    puts 'no preview available'
  end
end

module Printable
  def print
    puts "#{self.class.name} print"
  end
end

class Pdf
  include Printable

  def print_preview
    puts 'pdf preview'
  end
end

class Html
  include PreviewLess
  include Printable
end

class Photocopy
  include PreviewLess

  def print
    puts 'photocopy generated'
  end
end

[Pdf, Html, Photocopy].each do |printable|
  Printer.new(printable.new).print_preview
  Printer.new(printable.new).print
  puts '-------------'
end
