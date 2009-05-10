#!/usr/bin/ruby

require 'VfLine'

x = VfLine.new
x.width = 400
x.height = 200
x.view3d = "true"
x.title = "Web Shit"
x.series["TWOH"] = {"RHC" => 30,
                      "DMA" => 15,
                      "Operations" => 20,
                      "RSC" => 7,
                      "Loadbuild" => 9}

x.series["DWOH"] = {"Jan" => 0,
                      "Feb" => 17,
                      "Mar" => 15,
                      "Apr" => 4,
                      "May" => 3}
  
puts x.to_xaml
