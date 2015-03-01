# -*- encoding: utf-8 -*-
# stub: namecase 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "namecase"
  s.version = "2.0.0"

  s.require_paths = ["lib"]
  s.authors = ["Aaron Patterson"]
  s.date = "2015-03-01"
  s.description = "NameCase is a Ruby implementation of `Lingua::EN::NameCase`, a library for\nconverting strings to be properly cased. This is good for converting\ndenormalized data to human friendly data."
  s.email = ["aaronp@rubyforge.org"]
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt"]
  s.files = [".gemtest", "Gemfile", "History.txt", "LICENSE.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/namecase.rb", "test/test_namecase.rb"]
  s.homepage = "http://namecase.rubyforge.org/"
  s.licenses = ["GPL"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubygems_version = "2.4.5"
  s.summary = "NameCase is a Ruby implementation of `Lingua::EN::NameCase`, a library for converting strings to be properly cased"
  s.test_files = ["test/test_namecase.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<minitest>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.13"])
    else
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<minitest>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.13"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<minitest>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.13"])
  end
end
