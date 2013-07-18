# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "namecase"
  s.version     = '1.1.0'
  s.authors     = ["tenderlove"]
  s.email       = ["someemail@somewhere.com"]
  s.homepage    = ""
  s.summary     = %q{Does something to names}
  s.description = %q{A slighter longer description about doing something to names}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
