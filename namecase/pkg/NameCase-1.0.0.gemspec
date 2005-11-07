require 'rubygems'

spec = Gem::Specification.new do |s|
  s.name      = "namecase"
  s.version   = "1.0.0"
  s.author    = "Aaron Patterson"
  s.email     = "aaronp@rubyforge.org"
  s.homepage  = "namecase.rubyforge.org"
  s.platform  = Gem::Platform::RUBY
  s.summary   = "NameCase is a Ruby implementation of Lingua::EN::NameCase, a library for converting strings to be properly cased."
  s.files     = Dir.glob("{bin,test,lib,doc}/**/*")
  s.require_path  = "lib"
  s.autorequire   = "NameCase"
  s.test_file     = "test/test_namecase.rb"
  s.has_rdoc      = true
  s.extra_rdoc_files = ["README"]
end

if $0 == __FILE__
  Gem::manage_gems
  Gem::Builder.new(spec).build
end
