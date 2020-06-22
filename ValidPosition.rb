class ValidPosition < Struct.new(:type, :limit)

  def validate(position:)
    find_type.validation_result(position: position, limit: limit)
  end

  def find_type
    Object.const_get("#{type}")
  end
end

class ValidateCoordinate
  def self.validation_result(position:, limit:)
    (position > 0 && position < limit) ? true : false
  end
end
