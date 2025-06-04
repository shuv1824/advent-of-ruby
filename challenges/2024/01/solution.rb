# frozen_string_literal: true

module Year2024
  class Day01 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      distances = []
      for i in 0..(data[0].length - 1) do
        distances.append(data[0][i] - data[1][i])
      end

      distances.sum
    end

    def part_2
      nil
    end

    private

    # Processes each line of the input file and stores the result in the dataset
    def process_input(line)
      line.split(' ').map(&:to_i)
    end

    # Processes the dataset as a whole
    def process_dataset(set)
      res = []
      l0 = []
      l1 = []

      set.each do |arr|
        l0.append arr[0]
        l1.append arr[1]
      end

      res.append l0.sort
      res.append l1.sort
    end
  end
end
