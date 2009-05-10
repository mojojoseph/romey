################################################################################
#
# This file is part of Romey
#
# Romey is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Romey is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Romey.  If not, see <http://www.gnu.org/licenses/>.
#
################################################################################

require 'VfChart'
require 'rexml/document'
include REXML

class VfPie < VfChart

  attr_accessor :series

  def initialize
    super
    self.series = Hash.new
  end

  def to_xaml
    chartSeries = Element.new("vc:Chart.Series")

    series.keys.each do |s|

      dataSeries  = Element.new("vc:DataSeries")
      
      dataSeries.attributes["RenderAs"] = "Pie"
      dataSeries.attributes["LabelEnabled"] = "True"
      dataSeries.attributes["LabelLineThickness"] = "0.5"
      dataSeries.attributes["Bevel"] = "False"
      
      dataPoints = Element.new("vc:DataSeries.DataPoints")
      
      series[s].keys.each do |dp|
        
        dpe = Element.new("vc:DataPoint")
        dpe.attributes["AxisXLabel"] = dp
        dpe.attributes["YValue"] = series[s][dp].to_s
        dataPoints.add_element dpe
      end

      chartSeries.add_element dataSeries
      dataSeries.add_element dataPoints

    end

    hook_to_base chartSeries

    base_to_xaml

  end

end

