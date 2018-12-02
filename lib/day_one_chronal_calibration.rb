class DayOneChronalCalibration
  def initialize(start, changes)
    @start = start
    @changes = changes
  end

  def calibrate
    @changes.reduce(@start, :+)
  end
end