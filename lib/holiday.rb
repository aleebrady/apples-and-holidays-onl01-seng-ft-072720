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
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array 
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter = []
  holiday_hash[:winter].each do |season, supplies|
    winter << supplies
  end
  winter.flatten 
end

def all_supplies_in_holidays(holiday_hash)
 
end

def all_holidays_with_bbq(holiday_hash)
 bbq_holidays = []

  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      bbq_holidays << holiday if supplies.include?("BBQ")
    end
  end

  bbq_holidays
end







