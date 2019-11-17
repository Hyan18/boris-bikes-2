require 'docking_station'
require 'bike'

describe DockingStation do

  describe '#release_bike' do

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error(RuntimeError, "no bikes available")
    end

    it "does not release broken bikes" do
      broken_bike = double(:bike, working?: false)
      subject.dock(broken_bike)
      expect { subject.release_bike }.to raise_error("no working bikes available")
    end

  end

  describe '#dock' do

    it 'raises an error when there are no spaces available' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      expect{ subject.dock Bike.new }.to raise_error(RuntimeError, 'no space available')
    end

    it "accepts broken bikes" do
      broken_bike = Bike.new
      broken_bike.report
      expect { subject.dock(broken_bike) }.to_not raise_error
    end

  end


  describe "initialization" do
    it "sets capacity" do
      docking_station = DockingStation.new(10)
      10.times{docking_station.dock Bike.new}
      expect{ docking_station.dock Bike.new }.to raise_error(RuntimeError, 'no space available')
    end

    it "sets defauilt capacity" do
      docking_station = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times{docking_station.dock Bike.new}
      expect{ docking_station.dock Bike.new }.to raise_error(RuntimeError, 'no space available')
    end

  end

end
