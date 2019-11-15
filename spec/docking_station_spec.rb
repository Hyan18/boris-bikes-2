require './lib/docking_station'
describe DockingStation do

 #it "releases bike" do
  # DockingStation.new.respond_to?(:release_bike)
 #end
#end

it {is_expected.to respond_to(:release_bike)}
#it { is_expected.to respond_to :working?}

it {is_expected.to respond_to(:dock).with(1).argument}

# Does the docking station respond to a bike being docked
it {is_expected.to respond_to(:bikes)}

#it {expect(dock(bike)).to eq true }

describe '#release_bike' do
  it "raises an error when there are no bikes available" do
    expect { subject.release_bike }.to raise_error(RuntimeError, "no bikes available")
  end
end

    describe '#dock' do
      it 'raises an error when there are no spaces available' do
        # bike = Bike.new
        DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
        expect{ subject.dock Bike.new }.to raise_error(RuntimeError, 'no space available')
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
