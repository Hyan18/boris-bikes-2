class DockingStation
  docking_station = DockingStation.new
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
    return fail "no bikes available" if empty?
    @bikes.pop
  end
  
  def dock(bike)
    # @bike = bike
    return fail "no space available" if full?
    @bikes << bike
  end
  
  # def bike       commented out due to attr_reader
    # @bike
  # end
  
private
def full?
  @bikes.size == 20 ? true : false
end

def empty?
  @bikes.empty?
end
  
  
  end