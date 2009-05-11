#!/usr/bin/ruby

require 'VfLine'
require 'date'

x = VfLine.new
x.width = 400
x.height = 200
x.view3d = "true"
x.title = "Temperatures"

start = Date.parse("1/1/2009")


x.series["High"] = {"2009-01" => 110,
                    "2009-02" => 65,
                    "2009-03" => 80,
                    "2009-04" => 85,
                    "2009-05" => 90,
                    "2009-06" => 95,
                    "2009-07" => 100,
                    "2009-08" => 105,
                    "2009-09" => 95,
                    "2009-10" => 85,
                    "2009-11" => 75,
                    "2009-12" => 70}

puts x.to_xaml
