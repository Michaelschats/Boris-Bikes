require_relative 'Bike'

class Dockingstation

  def initialize(capacity)
  @capacity = capacity
  @bikes = []
  end

  def release_bike
    raise "No Bikes Available" unless @bike
    @bike
  end

  def dock(bike)
    fail 'Capacity Full' if @bikes >= capacity
    @bikes << bike
    @bike = bike
  end
end
