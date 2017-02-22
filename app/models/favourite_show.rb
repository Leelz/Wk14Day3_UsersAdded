class Favourite_show < ApplicationRecord
  belongs_to :show
  belongs_to :nuser
end
