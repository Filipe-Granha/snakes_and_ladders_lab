require "minitest/autorun"
require "minitest/rg"
require_relative "../player.rb"

class TestPlayer < MiniTest::Test
  def setup
    @player1 = Player.new("Eugene")
    @player2 = Player.new("Filipe")
  end

  def test_player_name
    assert_equal("Eugene", @player1.player_name)
  end

  def test_player_position
    assert_equal(0, @player1.position)
  end

  def test_update_position
    @player1.update_position(6)
    assert_equal(6, @player1.position)
  end
end