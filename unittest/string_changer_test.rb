require 'test/unit'
require_relative 'string_changer'

class TestAdd < Test::Unit::TestCase
  def test_reverse
    changer = StringChanger.new
    expected = changer.reverse("abc")
    assert_equal expected, "cba"
  end
end
