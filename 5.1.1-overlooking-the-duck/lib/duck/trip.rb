class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(bicycles:, customers:, vehicle:)
    @bicycles = bicycles
    @customers = customers
    @vehicle = vehicle
  end

  # this 'mechanic' parameter could be of any class
  def prepare(preparers)
    preparers.each do |preparer|
      case preparer
      when Mechanic
        preparer.prepare_bicycles(bicycles)
      when TripCoordinator
        preparer.buy_food(customers) 
      end
      when Driver
        preparer.gas_up(vehicle)
        preparer.fill_water_tank(vehicle)
      end
    end
  end
end
