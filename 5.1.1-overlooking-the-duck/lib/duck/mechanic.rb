# every preparer is a duck that responds to prepare_trip

class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each do |bicycle|
      prepare_bicycle(bicycle)
    end
  end

  private

  def prepare_bicycle(bicycle)
    puts "Preparing #{bicycle}"
  end
end
