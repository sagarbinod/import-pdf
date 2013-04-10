#! ruby
require "import_pdf/version"
require "import_pdf/formulatetext"

class ImportPdf
  def new(*args)
    FormulateText.new(*args)
  end
end