def get_first_name_of_season_winner(data, season)
  season_data = data[season].first
  season_data["name"].split(" ").first
end

def get_contestant_name(data, occupation)
  # code here
   data.map do|season, season_data|

    season_data.select do |data|
     data["occupation"] == occupation
   end
  end.flatten.first["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  result = 0
  data.each do |season, season_data|
    season_data.each do |contestant|
    result += 1 if contestant["hometown"] == hometown
    end
  end
  result
end

def get_occupation(data, hometown)
  # code here
  data.map do |season, season_data|
    season_data.select do |contestant|
     contestant["hometown"] == hometown
    end
  end.flatten.first["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  ages = data[season].inject(0) do |sum, contestant|
   contestant["age"].to_f + sum
  end
  ages = ages / data[season].count.to_f
  ages.round
end
