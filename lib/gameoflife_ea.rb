# frozen_string_literal: true

require 'gameoflife_ea/cell'
require 'gameoflife_ea/world'
require 'gameoflife_ea/figures'
require 'gameoflife_ea/rules'
require 'os'

module GameoflifeEa
  # This is where the game takes place
  class Game
    OS.posix? ? system('clear') : system('cls')
    world = World.new
    world.world = Figures.new.random(world.world)
    # Figures.new.heart(world.world)
    world.show_world

    rules = Rules.new
    loop do
      sleep(1)
      OS.posix? ? system('clear') : system('cls')
      rules.world_copy = Marshal.load(Marshal.dump(world.world))
      world.world.each_with_index do |obj, row|
        obj.each_with_index do |_cell, col|
          rules.first_rule(row, col, world)
          rules.third_rule(row, col, world)
          rules.fourth_rule(row, col, world)
        end
      end
      world.world = Marshal.load(Marshal.dump(rules.world_copy))
      world.show_world
    end
  end
end
