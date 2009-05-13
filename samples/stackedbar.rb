#!/usr/bin/ruby

require 'VfStackedBar'

x = VfBar.new
x.width = 400
x.height = 200
x.view3d = "true"
x.theme = "Theme2"
x.title = "Testcases"

# x.series["Feature Test"] = {"Pass" => 120,
#                             "Fail" => 10,
#                             "Blocked" => 5,
#                             "Not Run" => 25}

# x.series["System Test"] = {"Pass" => 50,
#                             "Fail" => 5,
#                             "Blocked" => 8,
#                             "Not Run" => 10}
# x.series["Regression Test"] = {"Pass" => 1100,
#                             "Fail" => 30,
#                             "Blocked" => 15,
#                             "Not Run" => 200}

x.series["Pass"] = { :series => {"Feature Test" => 120,
                                  "System Test"  => 50,
                                  "Regression"   => 1100},
                     :tooltiptext => "#Percentage%"} 

x.series["Fail"] = { :series => {"Feature Test" => 10,
                                 "System Test" => 5,
                                 "Regression" => 30},
                     :tooltiptext => "#Percentage%"} 


                             

puts x.to_xaml
