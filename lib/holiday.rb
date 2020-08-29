require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, items|
    items << supply 
  end
  end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr = []
holiday_hash[:winter].each do |k, v|
arr << v
end
arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
#  holiday_hash.each do |season, holiday|
#   puts "#{season.capitalize}:"
#   holiday.each do |holiday_name, supplies|
#     holiday_name.to_s.split("_").collect {|split_holiday_name| split_holiday_name.capitalize}.join(" ")} supplies.join(", ")
#   end
# end
  holiday_hash.each do |season, holiday|
  
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map{|e| e.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holiday_hash.map do |season, holidays|
  holidays.map do |holiday_name, supplies|
    supplies.include?("BBQ") ? holiday_name : nil
end
end.flatten.compact
end







