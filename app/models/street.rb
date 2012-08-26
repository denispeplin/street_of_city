class Street < ActiveRecord::Base
  belongs_to :district
  has_one :city, through: :district
  
  scope :belongs_to_city, lambda { |city_id| joins(:district).where(districts: { city_id: city_id }) }
  
  attr_accessible :name, :district_id
end
