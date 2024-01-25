class TripCoordinator
  def prepare_trip(trip)
    buy_all_food(trip.customers)
  end

  private

  def buy_all_food(customers)
    customers.each { |customer| buy_food(customer) }
  end

  def buy_food(customer)
    puts "Buying food for #{customer}"
  end
end
