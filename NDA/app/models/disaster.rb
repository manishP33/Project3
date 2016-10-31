class Disaster < ApplicationRecord
  belongs_to :natural_disaster_category
  has_many :comments
end
