require "minitest/autorun"
require "minitest/rg"
require_relative "../dice"


class TestDice < MiniTest::Test
  def setup
    @dice = Dice.new(6)
  end



  def test_sides
    assert_equal(6, @dice.sides)
  end


end