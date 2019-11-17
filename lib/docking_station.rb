class DockingStation
  docking_station = DockingStation.new
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "no bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "no space available" if full?
    @bikes << bike
  end

private

def full?
  @bikes.size >= @capacity
end

def empty?
  @bikes.empty?
end


  end
