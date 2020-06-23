require_relative('Cell')
class CreateBoard

  def create_board(value:, number:, board:, row:)
    return board if value == number
    row = create_row(value: value, number: 0, row: [], current: number)
    board[number] = row
    create_board(value: value, number: number.next, board: board, row: [])
  end

  def create_row(value:, number:, row:, current:)
    return row if value == number
    row[number] = rand(0..1)
    create_row(value: value, number: (number + 1), row: row, current: current)
  end

end
