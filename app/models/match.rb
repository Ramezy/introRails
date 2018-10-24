class Match < ApplicationRecord
  belongs_to :season
  has_many :teams

  validates :name, presence: true
  validates :date, presence: true
  validates :homeTeamScore, numericality: { only_integer: true }
  validates :awayTeamScore, numericality: { only_integer: true }
end
