require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  first_name = ""
  
  data[season].each {|data|
    if data["status"] == "Winner"
      first_name = data["name"].split(" ")[0]
    end
  
  }
  
  first_name
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  
  data.each {|season, data|
    data.each {|person|
      if person["occupation"] == occupation
        name = person["name"]
      end
    }
  }
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  
  data.each {|season, data|
    data.each {|person|
      if person["hometown"] == hometown
        counter += 1
      end
    }
  }
  counter
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each {|season, data|
    data.each {|person|
      if person["hometown"] == hometown
        occupation = person["occupation"]
      end
    }
  }

  occupation
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  age_total = 0
  
  data[season].each {|person|
    age_total += person["age"].to_i
    counter += 1
  }
  
  age_total/counter
  
  
  
end
