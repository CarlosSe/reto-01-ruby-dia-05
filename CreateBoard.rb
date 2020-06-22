require_relative('Cell')

class CreateBoard

  def create(size:)
    board = Array.new(size)
    size.times do |i|      
      row = Array.new(size)
      size.times do |j|
        row[j] = Cell.new(position_x: j, position_y: i, value: rand(0..1))
      end
      board[i] = row
    end
    board
  end
end
