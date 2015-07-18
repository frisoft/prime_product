require "spec_helper"
require_relative "../my_prime"

describe MyPrime do

  describe ".first" do
    it "returns the first n prime numbers as an array" do
      expect(described_class.first(4)).to eq [2,  3,   5,   7]
    end
  end

end
