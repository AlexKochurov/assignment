ActiveRecord::Schema.define do
  create_table :buildings do |table|
    table.column :name, :string
  end

  create_table :floors do |table|
    table.column :building_id, :integer
    table.column :number, :integer
  end

  create_table :apartments do |table|
    table.column :floor_id, :integer
    table.column :external_id, :string
  end

  create_table :residents do |table|
    table.column :apartment_id, :integer
    table.column :external_id, :string
    table.column :first_name, :string
    table.column :last_name, :string
    table.column :email, :string
    table.column :phone_number, :string
  end
end
