def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_data|
    if contestant_data["status"] =="Winner"
      return contestant_data["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        return contestant_data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, contestants|
    contestants.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_of_ages= 0 
  num_of_contestants = 0 
  average_age = 0 
  data[season].each do |contestant_data|
    total_of_ages += contestant_data["age"].to_i 
    num_of_contestants += 1 
  end
  average_age = (total_of_ages/num_of_contestants.to_f).round(0)
  #had to look up how to float in ruby and round to nearest whole number upwards as cannot have part of a person)
end
