require 'bike'

describe Bike do

  it {expect(subject).to respond_to :report_broken}

  it "bike.working returns false if bike has been reported broken" do
    bike = Bike.new
    bike.report_broken
    expect(bike).not_to be_working
  end


end