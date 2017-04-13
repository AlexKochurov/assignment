class CSVParser
  attr_reader :data

  def initialize(filepath)
    @filepath = filepath
    parse_data
  end

  private

    def parse_data
      # open the file
      # strig interpretation
      # assign @data to set of data structures
      @data = { info: nil }
    end
end
