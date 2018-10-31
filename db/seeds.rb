require 'json'
file = File.read('schedule.json')
data = JSON.parse(file)

Season.destroy_all

season = Season.create(name: data["name"], seasonDate: "2016")


match_name = ""

data["rounds"].each do |round|
    match_name = round["name"]
    round["matches"].each do |mat|
        match = Match.create(name: match_name, date: mat["date"], homeTeamScore: mat["score1"], awayTeamScore: mat["score2"], season:season, homeTeam: mat["team1"]["name"], awayTeam: mat["team2"]["name"])
        
        team = Team.find_or_create_by(name: mat["team1"]["name"])
        team.key = mat["team1"]["key"]
        team.code = mat["team1"]["code"]
        team.season = season
        #team.match = match
        team.save
    end
end  





puts "After seeding the database"
puts " - There are #{Match.count} matches."
puts " - There are #{Season.count} seasons."
puts " - There are #{Team.count} teams."