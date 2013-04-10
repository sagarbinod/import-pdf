#! ruby
require "import_pdf/version"
require "import_pdf/formulatetext"

module ImportPdf
  extend self

  def formulateText(*args)
    FormulateText.new(*args)
  end

end