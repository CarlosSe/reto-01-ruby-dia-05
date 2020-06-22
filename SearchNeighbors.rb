require_relative('ValidPosition')

class SearchNeighbors < Struct.new(:type)

  def search(game:, cell:)
    contador = 0
    index_y = cell.position_y
    index_x = cell.position_x
    isValid = ValidPosition.new('ValidateCoordinate', game.length - 1)
    for i in (index_y - 1)..(index_y + 1)
      for j in (index_x - 1)..(index_x + 1)
        validate_x = isValid.validate(position: j)
        validate_y = isValid.validate(position: i)
        contador += game[i][j].value
      end
    end
    contador 
  end
end
