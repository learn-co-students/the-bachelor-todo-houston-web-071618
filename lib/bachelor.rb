# require 'json'

# data = JSON.parse(File.read('../spec/fixtures/contestants.json'))

# hash with keys of seasons and array of contestants as values
# each array element is a ontestant is it's own hash


def get_first_name_of_season_winner(data_h,season_k)
  # code here
ans = ""
  data_h[season_k].each do | season_key, contestant_data |
         if season_key["status"] == "Winner"
         ans = season_key["name"].split(" ").first
         end   
end
ans
end
# get_first_name_of_season_winner(data,"season 10")

def get_contestant_name(data_h, occupation_v)
ans = ""   
   data_h.each do | season_key, contestant_data |
      contestant_data.each do | cont_key, cont_val |
         if cont_key["occupation"] == occupation_v
         ans = cont_key["name"]
         end    
      end
   end  
ans
end 
# get_contestant_name(data, "Cruise Ship Singer")

def count_contestants_by_hometown(data_h, hometown_v)
ans = 0   
   data_h.each do | season_key, contestant_data |
      contestant_data.each do | cont_key, cont_val |
         if cont_key["hometown"] == hometown_v
         ans += 1
         end    
      end
   end  
ans
end
# count_contestants_by_hometown(data,"Palo Alto, CA")

def get_occupation(data_h, hometown_v)
ans = ""   
   data_h.each do | season_key, contestant_data |
      contestant_data.find do | cont_key, cont_val |
         if cont_key["hometown"] == hometown_v
         ans = cont_key["occupation"]
         end    
      end
   end  
ans
end
# get_occupation(data, "Cranston, Rhode Island")

def get_average_age_for_season(data_h, season_k)
arr = []   
ans = ""   
   data_h[season_k].each do | season_key, contestant_data |
      arr << season_key["age"].to_f
   end  
arr_sum = arr.inject(0){|sum,x| sum + x }
ans = arr_sum / arr.size
ans = ans.round
end
# get_average_age_for_season(data, "season 10")
