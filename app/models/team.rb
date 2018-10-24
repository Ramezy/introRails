class Team < ApplicationRecord
  belongs_to :match
  belongs_to :season
end
