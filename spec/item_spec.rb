require './lib/item'

RSpec.describe Item do
  context 'initialization' do
    it 'exists' do
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      expect(item1).to be_an_instance_of(Item)
      expect(item2).to be_an_instance_of(Item)
    end

    it 'has a name' do
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      expect(item2.name).to eq('Apple Pie (Slice)')
    end

    it 'has a price' do
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      expect(item2.price).to eq(2.50)
    end
  end
end
