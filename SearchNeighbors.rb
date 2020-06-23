class SearchNeighbors

  def iterate(game:, size:, start:, count:, list_neighbors:)
    return list_neighbors if start > size - 2
    start += 1
    count = search(game: game, row: game[start], size: size, start: 0, current: start, count: 0)
    list_neighbors << count
    iterate(game: game, size: size, start: start, count: count, list_neighbors: list_neighbors)
  end

  def search(game:, row:, size:, start:, current:, count:)
    return count if start > size - 2
    start += 1
    if game[current][start] == 1
      count += 1
    end
    search(game: game, row: row, size: size, start: start, current: current, count: count)
  end
end
