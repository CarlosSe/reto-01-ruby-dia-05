class SearchNeighbors

  def iterate(game:, size:, start:)
    return game if start > size
    start += 1
    search(row: game[start], size: size, start: 0, current: start)
    iterate(game: game, size: size, start: start)
  end

  def search(row:, size:, start:, current:)
    return row if start > size
    start += 1
    search(row: row, size: size, start: start, current: current)
  end
end
