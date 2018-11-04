class Game < ApplicationRecord
  belongs_to :system
  validates_uniqueness_of :name, scope: [:system_id]
end
