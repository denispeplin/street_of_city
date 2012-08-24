class Street < ActiveRecord::Base
  belongs_to :district
  has_one :city, through: :district
  attr_accessible :name, :district_id
end
