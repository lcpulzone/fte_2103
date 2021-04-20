class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |food_truck|
      food_truck.in_stock?(item)
    end
  end

  def total_inventory
    initial_inventory = Hash.new { |hash, key| hash[key] = {} }
    @food_trucks.map do |food_truck, key|
      food_truck.each do |key, value|
        initial_inventory[inventory.item]
      end
    end
    initial_inventory
  end
end
