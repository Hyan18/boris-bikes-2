class DockingStation
  docking_station = DockingStation.new
  
    def release_bike
       Bike.new
    end
  
  def dock(bike)
    @bike = bike
  end
  
  # def bike       commented out due to attr_reader
    # @bike
  # end
  
  attr_reader :bike
  
  end