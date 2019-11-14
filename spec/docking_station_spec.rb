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
it {is_expected.to respond_to(:bike)}

#it {expect(dock(bike)).to eq true }

describe '#release_bike' do
  it "raises an error when there are no bikes available" do
    expect { subject.release_bike }.to raise_error(RuntimeError, "no bikes available")
  end
end

describe "#dock" do
  it "raises an error when the docking station is at capacity" do
    bike = Bike.new
    expect { subject.dock(bike) }.to raise_error(RuntimeError, "no space available")
  end
end

end

describe Bike do
  # it {is_expected.to respond_to(:working?)}
  


end