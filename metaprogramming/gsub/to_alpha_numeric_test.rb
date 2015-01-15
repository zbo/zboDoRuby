require 'test/unit'
require_relative 'to_alpha_numeric'
require_relative 'string_to_alpha_numeric'

class MyTest < Test::Unit::TestCase

  def setup
    # Do nothing
  end

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail
    instance=ToAlphaNumeric.new
    assert_equal 'aaabbb',instance.to_alpha_numeric('##aaa*&bbb')
    assert_equal 'aaabbb','##aaa*&bbb'.to_alpha_numeric()
  end
end