require 'date'

curr_date = Date.new(1901, 1, 1)
end_date = Date.new(2000, 12, 31)

sundays = 0
while (curr_date < end_date)
  if (curr_date.day == 1 && curr_date.sunday?) then sundays += 1 end
  curr_date = curr_date.next_day
end

p sundays
