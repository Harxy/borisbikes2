require 'docking_station'

describe DockingStation do
  it "release_bike should fail when no bike is available" do
    expect{ subject.release_bike }.to raise_error "No bikes available"

  end

  it "release_bike release bike when bike is available" do
    station = subject.dock(Bike.new)
    expect(station.release_bike).to be_working

  end

  it {expect(subject.release_bike).to be_working}

  it {expect(subject).to respond_to(:dock).with(1).argument}

end
