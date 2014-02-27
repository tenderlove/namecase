# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "namecase"
  s.version     = '1.2.0'
  s.authors     = ["tenderlove", "DanX"]
  s.email       = ["someemail@somewhere.com", "danx.exe@gmail.com"]
  s.homepage    = "http://namecase.rubyforge.org/namecase/"
  s.summary     = %q{Correct the case of names.}
  s.description = %q{With a plethora of rules and exceptions, NameCase helps you to capitalize names with relative confidence. Ported from Perl ( Lingua::EN::NameCase ) to Ruby by Aaron Patterson, with contributions from others.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
