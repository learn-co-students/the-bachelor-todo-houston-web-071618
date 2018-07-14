def get_first_name_of_season_winner(data, season)
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
      contestant.each do |attribute, value|
        if attribute == "status" && value == "Winner"
          return contestant["name"].split(" ").shift
        end
      end
    end
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if occupation == value
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if hometown == value
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if hometown == value
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |seasons, contestants|
    if season == seasons
      ages = contestants.collect do |contestant|
        contestant["age"].to_f
      end
    end
  end
age_average = ages.inject {|sum, element| sum + element} / ages.size
age_average.round 
end
