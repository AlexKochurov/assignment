require_relative 'config/database'
require_relative 'app/models/models'
require_relative 'app/services/csv_parser'
require_relative 'app/services/data_pusher'

residents = {}
CSVParser.new('import/sync_client_data.csv').data.each do |resident|
  residents[resident["TenantId"]] = resident
end

stored_residents_ids = Resident.select(:external_id).where(external_id: residents.keys)
                         .map(&:external_id)

building = Building.first
pusher   = DataPusher.new("http://localhost:8000")


# Process only new residents
residents.values_at(*(residents.keys - stored_residents_ids)).each do |resident_data|
  floor = building.floors.find_by(number: resident_data["ApartmentId"][0].to_i)
  unless floor
    floor = building.floors.create(number: resident_data["ApartmentId"][0].to_i)
    puts "Created floor: #{floor.inspect}"
    pusher.send("/v1/buildings/#{building.id}/floors", floor.attributes)
  end

  apartment = floor.apartments.find_by(external_id: resident_data["ApartmentId"])
  unless apartment
    apartment = floor.apartments.create(external_id: resident_data["ApartmentId"])
    puts "Created apartment: #{apartment.inspect}"
    pusher.send("/v1/floors/#{floor.id}/apartments", apartment.attributes)
  end

  resident =
    apartment.residents.create(
      external_id:  resident_data["TenantId"],
      first_name:   resident_data["First Name"],
      last_name:    resident_data["Last name"],
      email:        resident_data["Email"],
      phone_number: resident_data["Telephone Number"]
    )

  puts "Created resident: #{resident.inspect}"
  pusher.send("/v1/people", resident.attributes)
end
