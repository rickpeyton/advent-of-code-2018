require "day_one_chronal_calibration"
require_relative "../support/day_one"

RSpec.describe DayOneChronalCalibration do
  include DayOne

  it "exists" do
    expect(described_class).to eq DayOneChronalCalibration
  end

  it "should return 3 when starting at 0 and given 1, -2, 3, 1" do
    start = 0
    changes = [1, -2, 3, 1]

    result = DayOneChronalCalibration.new(start, changes).calibrate

    expect(result).to eq 3
  end

  it "should return -6 when starting at 0 and given -1, -2, -3" do
    start = 0
    changes = [-1, -2, -3]

    result = DayOneChronalCalibration.new(start, changes).calibrate

    expect(result).to eq(-6)
  end

  it "should return 500 given the puzzle input" do
    start = 0
    changes = DAY_ONE_PUZZLE_INPUT

    result = DayOneChronalCalibration.new(start, changes).calibrate

    expect(result).to eq 500
  end
end
