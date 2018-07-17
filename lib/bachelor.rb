require "pry"



def get_first_name_of_season_winner(data, season)
  # code here
  desired_season=data.find do |this_season|
    # binding.pry
    this_season.first == season
  end
# binding.pry
  winner_collection= desired_season[1].find do |person|
    person["status"] == "Winner"
  end

  winner_collection["name"].split(" ")[0]

end

def collect_all_contestants(data)
  data.collect do |this_season|
    this_season[1]
  end
end

def get_contestant_name(data, occupation)
  # code here

  # binding.pry
  all_seasons=collect_all_contestants(data).flatten

  winner_collection= all_seasons.find do |person|
    person["occupation"]== occupation
  end

  winner_collection["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_counter=0;
  all_seasons=collect_all_contestants(data).flatten

  all_seasons.each do |person|
    if person["hometown"] == hometown
      hometown_counter+=1
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  # code here
  all_seasons=collect_all_contestants(data).flatten
  first_hometown = all_seasons.find do |person|
    person["hometown"] == hometown
  end

  first_hometown["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  total_age_season=0
  desired_season=data.find do |this_season|
    this_season.first == season
  end

  desired_season[1].each do |person|
    total_age_season+= person["age"].to_f
  end
  (total_age_season/desired_season[1].length).round
end
