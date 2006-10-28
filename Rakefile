require 'rubygems'
require 'hoe'

PKG_BUILD = ENV['PKG_BUILD'] ? '.' + ENV['PKG_BUILD'] : ''
PKG_NAME = 'namecase'
PKG_VERSION = '1.0.2' + PKG_BUILD
ENV["VERSION"] = PKG_VERSION

Hoe.new(PKG_NAME, PKG_VERSION) do |p|
  p.rubyforge_name  = PKG_NAME
  p.author          = 'Aaron Patterson'
  p.email           = 'aaronp@rubyforge.org'
  p.summary         = "NameCase is a Ruby implementation of Lingua::EN::NameCase, a library for converting strings to be properly cased."
  p.description     = p.paragraphs_of('README.txt', 4).join("\n\n")
  p.url             = p.paragraphs_of('README.txt', 1).first.strip
  p.changes         = p.paragraphs_of('CHANGELOG.txt', 0..2).join("\n\n")
  p.extra_deps      = []
end
