require "spec_helper"
require_relative "../prime_product"

describe PrimeProduct do

  subject { described_class.new(4) }

  describe "#product" do

    it "returns a matrix of the prodct con the first n prime numbers" do

      expect(subject.product).to eq [
        [4,    6,  10,  14],
        [6,    9,  15,  21],
        [10,  15,  25,  35],
        [14,  21,  35,  49]
      ]

    end

  end

  describe "#prime_numbers" do
    it "returns an array with the first n prime numbers" do
      expect(subject.prime_numbers).to eq [2, 3, 5, 7]
    end
  end

end
