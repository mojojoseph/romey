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

require 'rexml/document'
include REXML

class VfChart

  @chart = nil

  attr_accessor :width, :height, :theme, :view3d, :borderbrush
  attr_accessor :title

  def initialize
    @chart = Element.new("vc:Chart")

    @height = 200
    @theme  = "Theme2"
    @view3d = "False"
    @borderbrush = "Gray"
  end

  def base_to_xaml

    @chart.attributes["xmlns:vc"] = "clr-namespace:Visifire.Charts;assembly=SLVisifire.Charts"
    @chart.attributes["Width"] = "#{width}"
    @chart.attributes["Height"] = "#{height}"
    @chart.attributes["Theme"] = "#{theme}"
    @chart.attributes["View3D"] = "#{view3d}"
    @chart.attributes["BorderBrush"] = "#{borderbrush}"

    chartTitles = Element.new("vc:Chart.Titles")
    chartTitle  = Element.new("vc:Title")
    chartTitle.attributes["Text"] = "#{title}"

    chartTitles.add_element chartTitle
    @chart.add_element chartTitles

    @chart.to_s
    
  end

  def hook_to_base element

    @chart.add_element element

  end

end





# <vc:Chart.Series>
# <vc:DataSeries RenderAs="Pie" LabelEnabled="True" LabelLineThickness="0.5" Bevel="False">
# <vc:DataSeries.DataPoints>
# <vc:DataPoint AxisXLabel="Yahoo" YValue="16.7" Exploded="True"/>
# <vc:DataPoint AxisXLabel="Google" YValue="68.6"/>
# <vc:DataPoint AxisXLabel="MSN/Live" YValue="8.7" Exploded="True"/>
# <vc:DataPoint AxisXLabel="Ask" YValue="3.7" Exploded="True"/>
# <vc:DataPoint AxisXLabel="AOL" YValue="1.7" Exploded="True"/>
# <vc:DataPoint AxisXLabel="Others" YValue="0.6" Exploded="True"/>
# </vc:DataSeries.DataPoints>
# </vc:DataSeries>
# </vc:Chart.Series>

# </vc:Chart>
