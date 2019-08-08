# frozen_string_literal: true

require 'gameoflife_ea/cell'
require 'colorize'

module GameoflifeEa
  # This is the class that creates a new world
  class World
    attr_accessor :world, :width, :height
    def initialize
      @width = 40
      @height = 20
      @world = Array.new(@height) { Array.new(@width) }
      @world.map! { |x| x.map! { Cell.new } }
    end

    def show_world
      @world.each do |x|
        x.each do |cell|
          print cell.status ? '::'.blue : '::'.light_black
        end
        print "\n"
      end
    end
  end
end
