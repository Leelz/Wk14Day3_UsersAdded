class Show < ApplicationRecord
  has_many :favourite_shows
  has_many :nusers, through: :favourite_shows, source: :nuser
end
