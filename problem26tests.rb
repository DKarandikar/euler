require "test/unit"
require_relative "problem26"


class TestRepeatingCycle < Test::Unit::TestCase
 
    def test_examples
      assert_equal(0, get_repeating(2))
      assert_equal(1, get_repeating(3))
      assert_equal(1, get_repeating(6))
      assert_equal(6, get_repeating(7))
      assert_equal(0, get_repeating(8))
    end
   
  end