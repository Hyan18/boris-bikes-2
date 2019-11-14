class DockingStation
  docking_station = DockingStation.new
  
    def release_bike
       Bike.new
       return fail "no bikes available" unless @bike
    end
  
  def dock(bike)
    # @bike = bike
    return fail "no space available" unless @bike
  end
  
  # def bike       commented out due to attr_reader
    # @bike
  # end
  
  attr_reader :bike
  
  end