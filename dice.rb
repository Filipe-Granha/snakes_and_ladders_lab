class Dice
  #comment

  def initialize(sides)
    @sides = sides
  end


  def roll
    return rand(1..@sides)
  end


  def sides
    return @sides
  end

end


