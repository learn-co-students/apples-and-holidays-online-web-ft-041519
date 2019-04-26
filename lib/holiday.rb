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

  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_supplies.each do |season, day|
    day.each do |holiday, supply|
      if holiday == :christmas || :new_years
        supply << "Balloons"
      end
    end
  end
end
# ALSO WOULD WORK: holiday_hash[:winter].each {|day, supplies| supplies << supply}

def add_supply_to_memorial_day(holiday_hash, supply)
  
  # add the second argument to the memorial day array
  
    holiday_hash[:spring][:memorial_day] << supply
  end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 
        holiday_hash[season][holiday_name] = supply_array
      end

def all_winter_holiday_supplies(holiday_hash)
  arr2 =[]
  holiday_hash[:winter].each {|holiday, supplies| arr2 << supplies}
  arr2.flatten
  
end
  
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_w_supplies|
    puts "#{season.capitalize}:"
      holiday_w_supplies.each do |holiday, supplies|
     puts "  #{holiday.to_s.split("_").map{|day| day.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  arr2 = []
  holiday_hash. each do |season, holiday_w_supplies|
    holiday_w_supplies.each do |holiday, supplies|
      if supplies.include?("BBQ")
        arr2 << holiday
      end 
    end 
  end 
  arr2
end







