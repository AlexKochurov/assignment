require 'csv'

class CSVParser
  attr_reader :data, :filepath

  def initialize(filepath)
    @filepath = filepath
    parse_data
  end

  private

    def parse_data
      arrays  = CSV.read(filepath)
      headers = arrays[0].map(&:strip)

      @data = arrays[1..-1].map { |values| Hash[headers.zip(pretty_values values)] }
    end

    def pretty_values(values)
      values.map { |val| val ? val.strip : "unknown" }
    end
end
