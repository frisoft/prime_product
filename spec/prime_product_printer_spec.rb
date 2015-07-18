require "spec_helper"
require_relative "../prime_product_printer"

describe PrimeProductPrinter do

  subject { PrimeProductPrinter.new(4) }

  describe "#print" do
    it "prints a matrix of products between the firs n prime numbers" do
      expect(STDOUT).to receive(:puts).with(<<EOS
    |   2   3   5   7
---------------------
  2 |   4   6  10  14
  3 |   6   9  15  21
  5 |  10  15  25  35
  7 |  14  21  35  49
EOS
      )
      subject.print
    end
  end

end
