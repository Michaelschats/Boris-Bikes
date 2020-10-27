require './lib/Docking_station'

describe "Dockingstation" do
  it "Create insatnce from Class Dockingstation" do
    expect(docking_station = Dockingstation.new).to eq docking_station
  end
end

describe "Dockingstation instances respond to method: Release_bike" do
  it "Each instance able to respond to release_bike method" do
    expect(Dockingstation.new).to respond_to(:release_bike)
  end
end
