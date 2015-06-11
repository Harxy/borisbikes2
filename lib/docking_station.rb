require_relative 'bike'

class DockingStation 

  attr_accessor :capacity

  def initialize (capacity = 20)
    @working_bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    @working_bikes.pop
  end

  def dock (bike)
    fail 'Station full' if full?
    if bike.working?
      @working_bikes << bike
    else
      @broken_bikes << bike
    end
  end


  private

  def empty?
    @working_bikes.empty?
  end

  def full?
    total_bikes >= @capacity
  end

  def total_bikes
    @working_bikes.length + @broken_bikes.length
  end

end
