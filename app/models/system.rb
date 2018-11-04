class System < ApplicationRecord
  has_many :games
  validates_uniqueness_of :name
end
