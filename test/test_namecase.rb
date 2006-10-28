$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
$:.unshift File.join(File.dirname(__FILE__), "..", "test")

require 'namecase'
require 'test/unit'

class TestNameCase < Test::Unit::TestCase
  def setup
    @proper_names = [
      "Keith",            "Leigh-Williams",       "McCarthy",
      "O'Callaghan",      "St. John",             "von Streit",
      "van Dyke",         "Van",                  "ap Llwyd Dafydd",
      "al Fahd",          "Al",
      "el Grecco",
      "ben Gurion",       "Ben",
      "da Vinci",
      "di Caprio",        "du Pont",              "de Legate",
      "del Crond",        "der Sind",             "van der Post",
      "von Trapp",        "la Poisson",           "le Figaro",
      "Mack Knife",       "Dougal MacDonald",
      # Mac exceptions
      "Machin",           "Machlin",              "Machar",
      "Mackle",           "Macklin",              "Mackie",
      "Macquarie",        "Machado",              "Macevicius",
      "Maciulis",         "Macias",               "MacMurdo",
      # Roman numerals
      "Henry VIII",       "Louis III",            "Louis XIV",
      "Charles II",       "Fred XLIX",
    ]
  end

  def test_namecase
    @proper_names.each do |name|
      nc_name = NameCase.new(name)
      assert_equal(name, nc_name.downcase.nc)
    end
  end

  def test_namecase_modify
    @proper_names.each do |name|
      nc_name = NameCase.new(name)
      assert_equal(name, nc_name.downcase.nc!)
    end
  end

  def test_namecase_multibyte
    String.class_eval { define_method(:chars) { self } }

    $KCODE = 'u'

    proper_cased = 'Iñtërnâtiônàlizætiøn'
    nc_name = NameCase.new(proper_cased)
    assert_equal(proper_cased, nc_name.downcase.nc!)

    String.class_eval { undef_method :chars }
  end
end
