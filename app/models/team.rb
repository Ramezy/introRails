class Team < ApplicationRecord
  belongs_to :season
  has_many :matches, through: :season

  validates :key, presence:true, uniqueness: true
  validates :name, presence:true, uniqueness: true
  validates :code, presence:true, uniqueness: true
end
