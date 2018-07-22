require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_x, contestants_data|
  	if season_x == season
  		contestants_data.each do |status|
  		if status["status"] == "Winner"
  			return status["name"].split(" ")[0]
  		end
  	end 
  	end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants_data|
  	contestants_data.each do |occupation_search|
  		if occupation_search["occupation"] == occupation 
  			return occupation_search["name"]
  		end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  array = []
  data.each do |season,contestants_data|
  	contestants_data.each do |hometown_search|
  		if hometown_search["hometown"] == hometown
  			array << hometown
  		end
  	end
  end
  return array.length
end


def get_occupation(data, hometown)
  data.each do |season,contestants_data|
  	contestants_data.each do |hometown_search|
  		if hometown_search["hometown"] == hometown
  			return hometown_search["occupation"]
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
  array = [] 
  count = 0
  data.each do |season_x, contestants_data|
  	if season_x == season
  		contestants_data.each do |age|
  			array << age["age"].to_f
  			count +=1
  		end
  	end
  	end
  sum = 0
  array.each do |i|
  	sum +=i
  end
  return (sum / count).round
end
