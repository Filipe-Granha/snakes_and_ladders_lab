class Game
  attr_reader :players, :tiles
  def initialize (players, tiles, dice, board)
    @players = players
    @tiles = tiles
    @dice = dice
    @board = board
  end


  def check_win
    if @players[0].position >= @board.check_length
      return true
    else
      return false 
    end
  end

  def rotate_players
    @players.rotate!
  end

  def check_snake_ladder
      for tile in @tiles
        if @players[0].position == tile.location
          @players[0].update_position(tile.modifier)
        end
      end
    return @players[0].position
  end

end