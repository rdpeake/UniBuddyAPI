class Broadcast < ActiveRecord::Base
  has_and_belongs_to_many :buildings
end