require './lib/Docking_station'

describe Dockingstation do
  describe '#dock' do
    it 'raises an error when full' do
      bike = Bike.new
      subject.dock(Bike.new)
      expect { subject.dock Bike.new }.to raise_error 'Capacity Full'
    end
  end

  describe '#release_bike' do
    it 'releases bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
     end
    it 'return error message if no Bikes available' do
      expect {subject.release_bike}.to raise_error "No Bikes Available"
    end
  end
end
