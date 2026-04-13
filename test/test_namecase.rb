# -*- coding: utf-8 -*-
#
require 'namecase'
require 'minitest/autorun'

class TestNameCase < Minitest::Test
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
      "Ruiz y Picasso",   "Dato e Iradier",       "Mas i Gavarró",
      # Mac exceptions
      "Machin",           "Machlin",              "Machar",
      "Mackle",           "Macklin",              "Mackie",
      "Macquarie",        "Machado",              "Macevicius",
      "Maciulis",         "Macias",               "MacMurdo",
      # Roman numerals
      "Henry VIII",       "Louis III",            "Louis XIV",
      "Charles II",       "Fred XLIX",            "Yusof bin Ishak",
      # Multibyte characters
      "Iñtërnâtiônàlizætiøn",
      "Öykü Çelik",
    ]
  end

  def test_namecase
    @proper_names.each do |name|
      assert_equal(name, NameCase(name.downcase))
      n = name.dup
      n.extend(NameCase)
      assert_equal(name, n.nc)
      assert_equal(name, NameCase(name))
    end
  end

  def test_namecase_modify
    @proper_names.each do |name|
      nc_name = NameCase!(name.downcase)
      assert_equal(name, nc_name)
    end
  end

  def test_that_it_skips_son_or_daughter_of_formatting
    names = ["De Shawn", "Da'Quan", "Le'Andre", "La Tonya"]

    names.each do |name|
      nc_name = NameCase(name.downcase, son_or_daughter_of: false)
      assert_equal(name, nc_name)
    end
  end

  def test_mc_prefixes_do_not_duplicate
    assert_equal("McFoo McBar", NameCase("mcfoo mcbar"))
    assert_equal("McFoo McBar", NameCase("MCFOO MCBAR"))
  end
end
