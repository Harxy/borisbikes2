class Bike

  def initialize
    @is_working = true
  end

  def broken?
    !@is_working
  end

  def working?
    @is_working
  end

  def report_broken
    @is_working = false
  end



end
