require 'rubygems'
require 'hoe'

Hoe.plugin :doofus, :git, :gemspec

Hoe.spec('namecase') do |p|
  self.readme_file       = 'README.md'
  developer('Aaron Patterson', 'aaronp@rubyforge.org')
  self.urls = {
    "home" => "https://rubygems.org/gems/namecase",
    "code" => "https://github.com/tenderlove/namecase",
    "bugs" => "https://github.com/tenderlove/namecase/issues",
  }

  license   'GPL'
  extra_dev_deps << ['minitest', '~> 4.0']
end
