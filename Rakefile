require 'rubygems'
require 'rake'
require 'rake/gempackagetask'

PKG_BUILD = ENV['PKG_BUILD'] ? '.' + ENV['PKG_BUILD'] : ''
PKG_NAME = 'namecase'
PKG_VERSION = '1.0.0' + PKG_BUILD
PKG_FILES = FileList["{doc,lib,test}/**/*"].exclude("rdoc").to_a

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
  s.rubyforge_project = "namecase"
end

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_tar = true
  p.need_zip = true
end
