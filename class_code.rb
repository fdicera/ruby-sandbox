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

# Secret Encoder
secret = [
  "I have a secret to share",
  "Is this secure enough for my PASSWORD?",
  "we should be more clever"
].sample
pp secret
# write your program below


pp secret.gsub("a", "1").gsub("e", "2").gsub("i", "3").gsub("o", "4").gsub("u", "5").gsub("A", "1").gsub("E", "2").gsub("I", "3").gsub("O", "4").gsub("U", "5")

# Secret Decoder
secret = [
  "3 h1v2 1 s2cr2t t4 sh1r2",
  "3s th3s s2c5r2 2n45gh f4r my P1SSW4RD?",
  "w2 sh45ld b2 m4r2 cl2v2r"
].sample
pp secret
# write your program below

pp secret.gsub("1", "a").gsub("2", "e").gsub("3", "i").gsub("4", "o").gsub("5", "u")
