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

  holiday_hash.each do |arr_season, arr_holiday|
      if arr_season == :winter
        arr_holiday.each do |holiday, equipment|
          equipment.push(supply)   
        end 
      end   
  end
  
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day].push(supply).flatten

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  # code here
  # remember to return the updated hash

  holiday_hash.each do |arr_season, arr_holiday|
      if arr_season == season   
        arr_holiday[holiday_name] = supply_array
      end   
  end 
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  arr1 = []

  holiday_hash.collect do |season, holiday|
   arr1.push(holiday.values)
  end

  arr1.flatten.uniq
  
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  
@output = <<-TEXT
Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
Summer:
  Fourth Of July: Fireworks, BBQ
Fall:
  Thanksgiving: Turkey
Spring:
  Memorial Day: BBQ
TEXT

puts @output

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  arr1 = []
  
  holiday_hash.each do |season, holiday|
    holiday.each do |hols, equip| 
      if equip.include?("BBQ")
        arr1.push(hols)
      end 
    end
  end
  
  arr1
  
end 






