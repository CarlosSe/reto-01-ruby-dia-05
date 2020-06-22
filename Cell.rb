class Cell
  attr_reader :position_x, :position_y, :value

  def initialize(position_x:, position_y:, value:)
    @position_x = position_x
    @position_y = position_y
    @value = value
  end
end
