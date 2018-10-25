class Match < ApplicationRecord
  belongs_to :season
  has_many :teams

  validates :name, presence: true
  validates :date, presence: true
end
