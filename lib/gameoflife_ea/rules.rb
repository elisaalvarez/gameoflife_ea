# frozen_string_literal: true

require 'gameoflife_ea/cell'

module GameoflifeEa
  # This class has all the rules to make the game work
  class Rules
    attr_accessor :world_copy
    # underpopulation
    def first_rule(row, col, world)
      @world_copy[row][col].kill if neighbours(row, col, world) < 2
    end

    # overpopulation
    def third_rule(row, col, world)
      if world.world[row][col].status
        @world_copy[row][col].kill if neighbours(row, col, world) > 3
      end
    end

    # reproduction
    def fourth_rule(row, col, world)
      if !world.world[row][col].status || world.world[row][col].status.nil?
        @world_copy[row][col].born if neighbours(row, col, world) == 3
      end
    end

    def neighbours(row, col, world)
      neighbours_counter = 0
      if row.positive?
        neighbours_counter += 1 if col.positive? && world.world[row - 1][col - 1].status
        neighbours_counter += 1 if world.world[row - 1][col].status
        neighbours_counter += 1 if col < world.width - 1 && world.world[row - 1][col + 1].status
      end
      if row < world.height - 1
        neighbours_counter += 1 if col.positive? && world.world[row + 1][col - 1].status
        neighbours_counter += 1 if world.world[row + 1][col].status
        neighbours_counter += 1 if col < world.width - 1  && world.world[row + 1][col + 1].status
      end
      if col.positive?
        neighbours_counter += 1 if world.world[row][col - 1].status
      end
      if col < world.width - 1
        neighbours_counter += 1 if world.world[row][col + 1].status
      end
      neighbours_counter
    end
  end
end
