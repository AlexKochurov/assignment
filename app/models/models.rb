# Not the Rails way, but...

class Building < ActiveRecord::Base
  has_many :floors
end

class Floor < ActiveRecord::Base
  belongs_to :building
  has_many :apartments
end

class Apartment < ActiveRecord::Base
  belongs_to :floor
  has_many :residents
end

class Resident < ActiveRecord::Base
  belongs_to :apartment
end
