require './lib/Bike.rb'

describe Bike do
  it "Bike responds to working method" do
    expect(Bike.new).to respond_to :working?
  end
end
