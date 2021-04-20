require './lib/item'
require './lib/food_truck'

RSpec.describe FoodTruck do
  context 'initialization' do
    it 'exists' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
    end

    it 'has a name' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck.name).to eq("Rocky Mountain Pies")
    end

    it 'starts with no inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck.inventory).to eq({})
    end
  end
end
# item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
# item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

# food_truck.check_stock(item1)
# #=> 0
#
# food_truck.stock(item1, 30)
#
# food_truck.inventory
# #=> {#<Item:0x007f9c56740d48...> => 30}
#
# food_truck.check_stock(item1)
# #=> 30
#
# food_truck.stock(item1, 25)
#
# food_truck.check_stock(item1)
# #=> 55
#
# food_truck.stock(item2, 12)
#
# food_truck.inventory
# #=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}
