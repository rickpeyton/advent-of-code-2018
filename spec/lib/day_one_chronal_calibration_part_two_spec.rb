require "day_one_chronal_calibration_part_two"
require_relative "../support/day_one"
include DayOne

RSpec.describe DayOneChronalCalibrationPartTwo do
  it "exists" do
    expect(described_class).to eq DayOneChronalCalibrationPartTwo
  end

  it "should return 10 starting at 0 and given 3, 3, 4, -2, -4" do
    start = 0
    changes = [3, 3, 4, -2, -4]

    result = DayOneChronalCalibrationPartTwo.new(start, changes).calibrate

    expect(result).to eq 10
  end

  it "should return 5 starting at 0 and given -6, 3, 8, 5, -6" do
    start = 0
    changes = [-6, 3, 8, 5, -6]

    result = DayOneChronalCalibrationPartTwo.new(start, changes).calibrate

    expect(result).to eq 5
  end

  it "should return 14 starting at 0 and given 7, 7, -2, -7, -4" do
    start = 0
    changes = [7, 7, -2, -7, -4]

    result = DayOneChronalCalibrationPartTwo.new(start, changes).calibrate

    expect(result).to eq 14
  end

  it "should return 0 starting at 0 and given 1, -1" do
    start = 0
    changes = [1, -1]

    result = DayOneChronalCalibrationPartTwo.new(start, changes).calibrate

    expect(result).to eq 0
  end

  it "should return 709 given the puzzle input", skip: true do
    start = 0
    changes = puzzle_input

    result = DayOneChronalCalibrationPartTwo.new(start, changes).calibrate

    expect(result).to eq 709
  end
end
