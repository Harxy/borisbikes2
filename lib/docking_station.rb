require_relative 'bike'

class DockingStation

  attr_accessor :capacity

  def initialize (capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock (bike)
    fail 'Station full' if full?
    @bikes << bike

  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length >= @capacity
  end

end
