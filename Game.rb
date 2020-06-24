require_relative('CreateBoard')
require_relative('SearchNeighbors')
class Game
  SIZE = 7

  def start
    createBoard = CreateBoard.new
    board_game = createBoard.create(size: SIZE)
    search = SearchNeighbors.new
    while true
      system("clear")
      board_game.each do |i|
        i.each do |cell|
          contador = search.search(game: board_game, cell: cell)
          (contador <= 1 || contador >= 4) ? cell.value = 0 : cell.value = 1
        end
      end
      board_game.each do |i|
        i.each do |cell|
          print " #{cell.value}"
        end
        print "\n"
      end
      sleep(3)
    end
  end
end

game = Game.new
game.start
    