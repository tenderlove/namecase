# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "namecase"
  s.version     = '1.2.0'
  s.authors     = ["DanX"]
  s.email       = ["danx.exe@gmail.com"]
  s.homepage    = ""
  s.summary     = "Name Case for proper names"
  s.description = "NameCase is a Ruby implementation of Lingua::EN::NameCase, a library for converting strings to be properly cased. This is good for converting denormalized data to human friendly data."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
