#! ruby
require "import_pdf/version"
require "import_pdf/formulatetext"

module ImportPdf
  def formulate(*args)
    FormulateText.new(*args)
  end
end