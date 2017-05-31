require "minitest/autorun"
require "minitest/rg"
require_relative "../game"
require_relative "../player"
require_relative "../dice"
require_relative "../tile"
require_relative "../board"

class TestGame < MiniTest::Test
  def setup
   @player1 = Player.new("Eugene")
   @player2 = Player.new("Filipe")
   @snake = Tile.new(9, -4)
   @ladder = Tile.new(6, 4)
   @dice = Dice.new(6)
   @board = Board.new(10)

   @game = Game.new([@player1, @player2], [@snake, @ladder], @dice, @board)
  end


  def test_check_win
    @player1.update_position(10)
    assert_equal(true, @game.check_win)
  end

  def test_check_loss
    assert_equal(false, @game.check_win)
  end

  def test_rotate_players
    @game.rotate_players
    assert_equal([@player2, @player1], @game.players)
  end

  def test_check_snake
    @player1.update_position(9)
    assert_equal(5, @game.check_snake_ladder)
  end

  def test_check_ladder
    @player1.update_position(6)
    assert_equal(10, @game.check_snake_ladder)
  end
end
