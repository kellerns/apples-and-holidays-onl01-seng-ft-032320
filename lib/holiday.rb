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
  
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)

    holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize + ":"

      holiday.each do |holiday, supplies|
        holiday_array = holiday.to_s.split("_")
        cap_name_array = []
        holiday_array.each do |word|
          cap_name_array << word.capitalize!
        end
        holiday_name = cap_name_array.join(" ")
        puts holiday_name
        puts supplies
      end
    end
 end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  holiday_hash.each do |season, holiday|
    
  end
end







