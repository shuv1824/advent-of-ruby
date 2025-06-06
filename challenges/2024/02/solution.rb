# frozen_string_literal: true

module Year2024
  class Day02 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      safe_reports = 0

      for arr in data do
        safe_reports += 1 if is_report_safe?(arr)
      end

      safe_reports
    end

    def part_2
      nil
    end

    private

    def is_report_safe?(arr)
      safe = true
      for _ in 0..(arr.length - 2) do
        nil
      end
      safe
    end

    # Processes each line of the input file and stores the result in the dataset
    def process_input(line)
      line.split(' ').map(&:to_i)
    end

    # Processes the dataset as a whole
    # def process_dataset(set)
    #   set
    # end
  end
end
