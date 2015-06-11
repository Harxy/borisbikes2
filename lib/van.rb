require_relative 'docking_station'

class Van 

  attr_accessor :capacity, :broken_bikes

  def initialize (capacity = 5)

    @working_bikes = []
    @broken_bikes =[]
    @capacity = capacity

  end

  def load_broken_bikes station

    station.broken_bikes.each do |broken_bike|
      @broken_bikes << station.broken_bikes.pop unless full?
    end 

  end

  private

  def full?

    total_bikes >= @capacity

  end

  def total_bikes

    @working_bikes.length + @broken_bikes.length

  end


end

x = DockingStation.new

y = Bike.new

y.report_broken

x.dock(y)

z = Van.new

puts x.broken_bikes.to_s

z.load_broken_bikes(x)

puts x.broken_bikes.to_s

puts z.broken_bikes.to_s






