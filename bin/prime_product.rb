#!/bin/env ruby

require_relative "../prime_product_printer"

PrimeProductPrinter.new(10).print(File.new("./output.txt", "w"))
