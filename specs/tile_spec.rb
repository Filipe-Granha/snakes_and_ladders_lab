require "minitest/autorun"
require "minitest/rg"
require_relative "../tile"


class TestTile < MiniTest::Test
  def setup
    @snake = Tile.new(9, -4)
    @ladder = Tile.new(6, 4)
  end

  def test_location__snake
    assert_equal(9, @snake.location)
  end

  def test_location__ladder
    assert_equal(6, @ladder.location)
  end

  def test_modifier__snake
    assert_equal(-4, @snake.modifier)
  end

  def test_modifier__ladder
    assert_equal(4, @ladder.modifier)
  end

end