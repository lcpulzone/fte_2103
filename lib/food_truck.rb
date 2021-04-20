class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new { |hash, key| hash[key] = 0 }
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, amount)
    @inventory[item] += amount
  end

  def in_stock?(item)
    @inventory.include?(item)
  end

  def potential_revenue
    total = Hash.new { |hash, key| hash[key] = 0}
    @inventory.map do |key, value|
      total[key.price] += value
    end
    total_value = total.sum do |key, value|
      key * value
    end
    total_value
  end
end
