#!/usr/bin/ruby

require 'VfLine'

x = VfLine.new
x.width = 400
x.height = 200
x.view3d = "true"
x.title = "Temperatures"
x.series["High"] = {"Jan" => 70,
                    "Feb" => 65,
                    "Mar" => 80,
                    "Apr" => 85,
                    "May" => 90,
                    "Jun" => 95,
                    "Jul" => 100,
                    "Aug" => 105,
                    "Sep" => 95,
                    "Oct" => 85,
                    "Nov" => 75,
                    "Dec" => 70}

x.series["Low"] = {"Jan" => 25,
                    "Feb" => 30,
                    "Mar" => 35,
                    "Apr" => 40,
                    "May" => 50,
                    "Jun" => 65,
                    "Jul" => 70,
                    "Aug" => 70,
                    "Sep" => 65,
                    "Oct" => 45,
                    "Nov" => 35,
                    "Dec" => 30}

puts x.to_xaml
