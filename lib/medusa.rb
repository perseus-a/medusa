#--
###############################################################################
#                                                                             #
# medusa -- The terminology manager for perseus-a                             #
#                                                                             #
# Copyright (C) 2007 Cologne University of Applied Sciences,                  #
#                    Claudiusstr. 1,                                          #
#                    50678 Cologne, Germany                                   #
#                                                                             #
# Authors:                                                                    #
#     Jens Wille <jens.wille@uni-koeln.de>                                    #
#                                                                             #
# medusa is free software; you can redistribute it and/or modify it under the #
# terms of the GNU General Public License as published by the Free Software   #
# Foundation; either version 3 of the License, or (at your option) any later  #
# version.                                                                    #
#                                                                             #
# medusa is distributed in the hope that it will be useful, but WITHOUT ANY   #
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS   #
# FOR A PARTICULAR PURPOSE. See the GNU General Public License for more       #
# details.                                                                    #
#                                                                             #
# You should have received a copy of the GNU General Public License along     #
# with medusa. If not, see <http://www.gnu.org/licenses/>.                    #
#                                                                             #
###############################################################################
#++

require 'rubygems'
require 'prometheus_conv'

require 'medusa/version'
require 'medusa/terminology'

module Medusa

  extend self

  def actions
    Terminology.actions(true)
  end

  def valid_action?(action)
    Terminology.valid?(action)
  end

  def import_formats
    PrometheusConv.input_formats
  end

  def export_formats
    PrometheusConv.output_formats
  end

  def valid_format?(direction, format)
    PrometheusConv.valid_format?({ :import => :in, :export => :out }[direction], format)
  end

  def terminology_exists?(terminology)
    Terminology.exists?(terminology)
  end

  def run(action, *args)
    Terminology.send(action, *args)
  end

end
