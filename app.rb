require_relative 'config/database'
require_relative 'app/models/models'
require_relative 'app/services/csv_parser'

import = CSVParser.new('import/sync_client_data.csv')
p import.data

b = Building.first
b.floors.each do |floor|
  p floor

  floor.apartments.each do |apt|
    puts "  apt: #{apt.inspect}"
  end
end
