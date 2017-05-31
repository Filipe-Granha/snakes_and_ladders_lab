class Player

  def initialize(name)
    @name = name
    @position = 0
  end

  def player_name
    return @name
  end

  def position
    return @position
  end

  def update_position(roll)
    @position += roll
  end
end
