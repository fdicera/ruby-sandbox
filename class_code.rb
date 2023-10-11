# Think Fast
unpredictable_inputs = [
  "Hello!",
  Time.now,
  rand(100),
  :GOODBYE,
  nil,
  true,
  false,
  { :city => "Chicago", :state => "IL", :zip => 60654 }
]

some_random_input = unpredictable_inputs.sample
# write your program below
if  some_random_input.class == Hash
	pp some_random_input.keys
	
elsif some_random_input.class == String
	pp some_random_input.downcase
	
elsif some_random_input.class == Time
	pp some_random_input.strftime("%A").to_s.downcase

elsif some_random_input.class == Integer
	if some_random_input % 2 == 0
		pp some_random_input.to_s + " is even"
	else
		pp some_random_input.to_s + " is odd"
	end
elsif some_random_input.class == Symbol
	pp some_random_input.downcase

elsif some_random_input == nil
	pp "no object provided"
	
elsif some_random_input == true
	pp "you may pass"
	
elsif some_random_input == false
	pp "you may not pass"

else
	pp some_random_input
end


# Twofer
name = ["raghu", "Bob", ""].sample
# write your program below
if name == ""
	pp "One for you, one for me."
else 
	pp "One for #{name}, one for me."
end

#dice roll
# write your program below
roll1 = rand(6)
roll2 = rand(6)

if roll1 == roll2
	pp "You guessed correctly."
else
	pp "Sorry, you guessed #{roll1}. The die landed on #{roll2}."
end

# leap year
years = [
  1700,
  1940,
  2038
]
year = years.sample
# write your program below

if year % 4 == 0
	if year % 100 == 0
		if year % 400 == 0
			pp "#{year} is a leap year!"
		else
			pp "#{year} is not a leap year."
		end
	else pp "#{year} is a leap year!"
	end
else pp "#{year} is not a leap year."
end
