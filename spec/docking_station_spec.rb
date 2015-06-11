require 'docking_station'

describe DockingStation do
  it "release_bike should fail when no bike is available" do
    expect {subject.release_bike }.to raise_error "No bikes available"

  end

  it "release_bike release bike when bike is available" do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_working

  end

  it {expect(subject).to respond_to(:dock).with(1).argument}

    it "release_bike release bike when bike is available" do
    subject.dock(Bike.new)
    subject.release_bike
    expect {subject.release_bike }.to raise_error "No bikes available"

  end

   it "dock should raise error when at capacity (20)" do

     20.times {subject.dock(Bike.new)}
     expect {subject.dock(Bike.new)}.to raise_error "Station full"

   end

  it "release_bike should not release a broken bike" do
    station = DockingStation.new
    workingbike = Bike.new
    workingbike.report_broken
    station.dock(workingbike)
    expect {station.release_bike}.to raise_error "No bikes available"

  end
end
