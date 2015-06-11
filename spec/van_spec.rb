require 'van'

describe Van do
  let(:station) {double :station, broken_bikes: [:brokenbike] }

  it {expect(subject).to respond_to :load_broken_bikes}

  it "should take broken bike from station with broken bike when not full" do
    subject.load_broken_bikes(station)
    expect(subject.broken_bikes).to eq [:brokenbike]
  end




end
