class User < ApplicationRecord
  has_many :user_games
  has_many :games, through: :user_games
  validates_uniqueness_of :email
end
