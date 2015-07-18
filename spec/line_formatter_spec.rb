require "spec_helper"
require_relative "../line_formatter"

describe LineFormatter do

  describe "#get_line" do

    context "without first column" do
      it "returns a formatted series of numbers with a blank first column and next numbers as array" do
        expect(subject.get_line(nil, [1, 9, 6, 2, 8])).to eq "    |   1   9   6   2   8"
      end
    end

    context "with first column" do
      it "returns a formatted series of numbers with as parametrs first column and next numbers as array" do
        expect(subject.get_line(999, [1, 9, 6, 2, 8])).to eq "999 |   1   9   6   2   8"
      end
    end

  end

  describe "#separator_line" do
    it "returns a serapator line for a specific number of column, including the first one" do
      expect(subject.separator_line(6)).to eq "-------------------------"
    end
  end

end
