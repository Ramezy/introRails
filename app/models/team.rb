class Team < ApplicationRecord
  belongs_to :match
  belongs_to :season
  has_many :matches

  validates :key, presence:true
  validates :name, presence:true
  validates :code, presence:true
end
