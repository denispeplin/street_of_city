class Street < ActiveRecord::Base
  belongs_to :district
  attr_accessible :name, :district_id
end
