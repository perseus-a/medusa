#--
###############################################################################
#                                                                             #
# A component of medusa, the terminology management software for perseus-a.   #
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

module Medusa

  class Terminology

    @actions = []

    class << self

      def actions(include_description = false)
        include_description ? @actions : @actions.map { |a| a.first }
      end

      def action(action, description)
        @actions << [action.to_s, description]
      end
      private :action

      def valid?(action)
        actions.include?(action.to_s)
      end

      def [](terminology)
        terminology.is_a?(Terminology) ? terminology : new(terminology)
      end

    end

    attr_reader :name

    def initialize(terminology)
      @name = terminology
    end

    def exists?
      (rand(10) % 2).zero?  # DUMMY!
    end

    action :create, 'Create a new terminology'
    def create
      puts 'created!'
    end

    action :delete, 'Delete an existing terminology'
    def delete
      puts 'deleted!'
    end

    action :import, "Import data into a terminology (if the terminology doesn't exist, it will be created)"
    def import(file, type)
      puts "imported: #{file}, #{type}"
    end

    action :export, 'Export a terminology into specified format'
    def export(file, type)
      puts "exported: #{file}, #{type}"
    end

    action :dump, 'Dump terminology'
    def dump(file)
      puts "dumped: #{file}"
    end

  end

end
