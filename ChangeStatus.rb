class ChangeStatus < Struct.new(:type)

  def show_type
    find_type.return_status
  end

  def find_type
    Object.const_get("#{type.capitalize}")
  end
end
