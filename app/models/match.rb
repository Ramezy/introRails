class Match < ApplicationRecord
  belongs_to :season
  has_many :team, through: :season

  validates :awayTeam, presence:true
  validates :homeTeam, presence:true
  validates :awayTeamScore, presence:true
  validates :homeTeamScore, presence:true
end
