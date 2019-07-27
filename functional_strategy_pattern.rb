module Printer
  def self.print_preview(print_preview_message)
    puts '-> starting the printing preview...'
    puts print_preview_message
    puts '-> happy with the preview? shall I print now?'
  end

  def self.print(print_message)
    puts '-> initializing...'
    puts '-> ...printing'
    puts print_message
    puts '-> print successful'
  end
end

module Pdf
  def self.printer_config
    { print_preview: 'pdf preview', print: Printable.message('Pdf') }
  end
end

module Html
  def self.printer_config
    { print_preview: PreviewLess.message, print: Printable.message('Html') }
  end
end

module Photocopy
  def self.printer_config
    { print_preview: PreviewLess.message, print: 'photocopy generated' }  
  end
end

module PreviewLess
  def self.message
    'no preview available'
  end
end

module Printable
  def self.message(doc_type)
    "#{doc_type} print"
  end
end

[Pdf.printer_config, Html.printer_config, Photocopy.printer_config].each do |h|
  Printer.print_preview(h[:print_preview])
  Printer.print(h[:print])
  puts '-------------'
end