class District < ActiveRecord::Base
  belongs_to :city
  attr_accessible :name
end
