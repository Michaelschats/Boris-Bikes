require_relative 'Bike'
class Dockingstation
attr_reader :bike
  def release_bike
    raise "No Bikes Available" unless @bike
    @bike
  end

  def dock(bike)
    fail "Capacity full" if @bike
    @bike = bike
  end
end
