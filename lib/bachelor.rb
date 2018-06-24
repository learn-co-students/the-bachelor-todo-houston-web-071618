require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |attributes|
    attributes.each do |attribute, value|
    if attribute == "status" && value == "Winner"
      return attributes["name"].split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.values.each do |contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.values.each do |contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end

  count
end

def get_occupation(data, hometown)
  data.values.each do |contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []

  data[season].each do |contestant|
    contestant.each do |attribute, value|
      ages << contestant["age"].to_i
    end
  end
  (ages.reduce(:+)/ages.length.to_f).round
end
