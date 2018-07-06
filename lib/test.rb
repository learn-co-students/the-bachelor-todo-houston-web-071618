require "json"

file = File.read("lib/contestants.json")
data = JSON.parse(file)

def get_first_name_of_season_winner(data, season)
  data[season].each do |people|
    people.each do |k, v|
      if v == "Winner"
        full_name = people["name"]
        return full_name.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, people|
    people.each do |attribute|
      if attribute["occupation"] == occupation
        return name = attribute["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, people|
    people.each do |attribute|
      if attribute["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_average_age_for_season(data, season)
  # code here
  average_age = 0.0
  count = 0.0

  data[season].each do |people|
    average_age += people["age"].to_f
    count += 1.0
  end
  average_age = average_age / count
  return average_age.round
end

p get_average_age_for_season(data, "season 10")
