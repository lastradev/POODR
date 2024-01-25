class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end

  private

  def gas_up(vehicle)
    puts "Adding gas to vehicle #{vehicle}"
  end

  def fill_water_tank(vehicle)
    puts "Filling water tank to #{vehicle}"
  end
end
