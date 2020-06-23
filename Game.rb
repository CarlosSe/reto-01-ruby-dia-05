require_relative('CreateBoard')
require_relative('SearchNeighbors')
class Game

  def start
    game_board = CreateBoard.new
    game = game_board.create_board(value: 6, number: 0, board: [], row: [])
    search = SearchNeighbors.new
    neighbors = search.iterate(game: game, size: 6, start: 0)
  end
end

game = Game.new
game.start
