require 'docking_station'

describe DockingStation do
  it "release_bike should fail when no bike is available" do
    expect {subject.release_bike }.to raise_error "No bikes available"

  end

  it "release_bike release bike when bike is available" do
    subject.dock double :bike, working?: true
    expect(subject.release_bike).to be_working

  end

  it {expect(subject).to respond_to(:dock).with(1).argument}

    it "release_bike release bike when bike is available" do
    subject.dock double :bike, working?: true
    subject.release_bike
    expect {subject.release_bike }.to raise_error "No bikes available"

  end

   it "dock should raise error when at capacity (20)" do

     subject.capacity.times {subject.dock double :bike, working?: true}
     expect {subject.dock(:bike)}.to raise_error "Station full"

   end

  it "release_bike should not release a broken bike" do
    subject.dock(double :bike, working?: false)
    expect {subject.release_bike}.to raise_error "No bikes available"
  end
end
