class DayOneChronalCalibrationPartTwo
  def initialize(start, changes)
    @frequency = [start]
    @changes = changes
  end

  def calibrate
    @changes.cycle do |change|
      @frequency << @frequency.last + change
      break @frequency.last if frequency_repeated?
    end
  end

private

  def frequency_repeated?
    @frequency.select { |f| f == @frequency.last }.size > 1
  end
end
