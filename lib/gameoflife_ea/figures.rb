# frozen_string_literal: true

module GameoflifeEa
  # This is the class that creates and kills cells
  class Figures
    def heart(world)
      world[7][16].born
      world[6][17].born
      world[6][18].born
      world[7][19].born
      world[6][20].born
      world[6][21].born
      world[7][22].born
      world[8][16].born
      world[8][22].born
      world[9][17].born
      world[9][21].born
      world[10][18].born
      world[10][20].born
      world[11][19].born
    end

    def random(world)
      world.each { |row| row.each { |cell| cell.born if rand(2) == 1 } }
    end
  end
end
