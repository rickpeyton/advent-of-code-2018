require "day_two/inventory_management_system"
require_relative "../../support/day_two"

RSpec.describe InventoryManagementSystem do
  it "exists" do
    expect(described_class).to eq InventoryManagementSystem
  end

  describe "#checksum" do
    context "example" do
      it "should have a checksum of 12" do
        ids = %w(abcdef bababc abbcde abcccd aabcdd abcdee ababab)

        result = InventoryManagementSystem.new(ids).checksum

        expect(result).to eq 12
      end
    end

    context "puzzle" do
      it "should solve the puzzle" do
        ids = DayTwo.puzzle_input

        result = InventoryManagementSystem.new(ids).checksum

        expect(result).to eq 5368
      end
    end
  end

  describe "#common" do
    context "example" do
      it "should return fgij as the common letters" do
        ids = %w(abcde fghij klmno pqrst fguij axcye wvxyz)

        result = InventoryManagementSystem.new(ids).common

        expect(result).to eq "fgij"
      end
    end

    context "puzzle" do
      it "should return fgij as the common letters" do
        ids = DayTwo.puzzle_input

        result = InventoryManagementSystem.new(ids).common

        expect(result).to eq DayTwo.puzzle_result
      end
    end
  end
end
