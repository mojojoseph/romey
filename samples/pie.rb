#!/usr/bin/ruby

require 'VfPie'
require 'date'

x = VfPie.new
x.width = 400
x.height = 200
x.view3d = "true"
x.title = "Candy Bar Sales"

x.series["Series"] = {"Snickers" => 100,
            "Mr. Goodbar" => 150,
            "Milky Way" => 200,
  "Twix"      => 220}

puts x.to_xaml
