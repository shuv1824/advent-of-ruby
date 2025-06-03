# frozen_string_literal: true

module Year2019
  class Day01 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      fuel = data.map do |d|
        (d / 3) - 2
      end
      fuel.sum
    end

    def part_2
      fuel = data.map do |d|
        total_fuel(d)
      end
      fuel.sum
    end

    def total_fuel(mass)
      fuel = (mass / 3) - 2
      fuel <= 0 ? 0 : fuel + total_fuel(fuel)
    end

    # Processes each line of the input file and stores the result in the dataset
    def process_input(line)
      line.to_i
    end

    # Processes the dataset as a whole
    # def process_dataset(set)
    #   set
    # end
  end
end
