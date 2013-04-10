# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'import_pdf/version'

Gem::Specification.new do |s|
  s.name              = "import_pdf"
  s.version           = ImportPdf::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Gem for cleaner importing of Pdf into various formats."
  s.homepage          = "http://github.com/compleatang/import-pdf"
  s.email             = "caseykuhlman@watershedlegal.com"
  s.authors           = [ "Casey Kuhlman" ]
  s.has_rdoc          = false

  s.files             = `git ls-files`.split($/)
  s.executables       = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files        = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths     = ["lib"]

  # s.add_dependency      ""

  s.description       = <<desc
  This gem will import pdfs into HTML. It is like Readability but for PDFs.
desc
end