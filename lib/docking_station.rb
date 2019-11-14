class DockingStation
  docking_station = DockingStation.new
  
  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
    return fail "no bikes available" if @bikes.empty?
    @bikes.pop
  end
  
  def dock(bike)
    # @bike = bike
    return fail "no space available" if @bikes.count >= 20
    @bikes << bike
  end
  
  # def bike       commented out due to attr_reader
    # @bike
  # end
  
  attr_reader :bikes
  
  end