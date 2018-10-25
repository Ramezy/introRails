require 'json'
file = File.read('schedule.json')
data = JSON.parse(file)

Season.delete_all

season = Season.create(name: data["name"], seasonDate: "2016")


match_name = ""

data["rounds"].each do |round|
    match_name = round["name"]
    round["matches"].each do |mat|
        match = Match.create(name: match_name, date: mat["date"], homeTeamScore: mat["score1"], awayTeamScore: mat["score2"])
        puts "#{match.inspect}"
    end
end



puts "After seeding the database"
puts " - There are #{Match.count} matches."
puts " - There are #{Season.count} seasons."
puts " - There are #{Team.count} teams."