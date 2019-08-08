# frozen_string_literal: true

module GameoflifeEa
  # This is the class that creates and kills cells
  class Cell
    attr_accessor :status
    def kill
      self.status = false
    end

    def born
      self.status = true
    end
  end
end
