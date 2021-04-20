class Item
  attr_reader :name

  def initialize(item_params)
    @name = item_params[:name]
  end
end
