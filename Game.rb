require_relative('CreateBoard')
require_relative('SearchNeighbors')
class Game
  SIZE = 7

  def start
    createBoard = CreateBoard.new
    board_game = createBoard.create(size: SIZE)
    search = SearchNeighbors.new
    board_game.each do |i|
      i.each do |cell|
        contador = search.search(game: board_game, cell: cell)
        puts "#{contador}"
      end
    end

  end
end

game = Game.new
game.start
    