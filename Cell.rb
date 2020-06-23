class Cell
  attr_reader :index_x, :index_y
  attr_accessor :value

  def initialize(index_x:, index_y:, value:)
    @index_x = index_x
    @index_y = index_y
    @value = value
  end
end
