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

# Sum Odd Integers
inputs = [
  ["9", "5", "4"],
  ["20", "40", "60"],
  ["1", "3", "19"]
]
numbers = inputs.sample
pp numbers
# write your program below

sum = 0
numbers.each do |n|
	n = n.to_i
	if n % 2 != 0
		sum = sum + n
	end	
end
pp sum

#Raindrops
integers = [1, 21, 35, 105]
integer = integers.sample
# write your program below

if integer % 3 == 0 && integer % 5 == 0 && integer % 7 == 0
	pp "PlingPlangPlong"
elsif integer % 3 == 0 && integer % 5 == 0
	pp "PlingPlang"
elsif integer % 3 == 0 && integer % 7 == 0
	pp "PlingPlong"
elsif integer % 5 == 0 && integer % 7 == 0
	pp "PlangPlong"
elsif integer % 3 == 0
	pp "Pling"
elsif integer % 5 == 0
	pp "Plang"
elsif integer % 7 == 0
	pp "Plong"
else 
	pp integer
end

#Character Types
strings = [
  "here 12 plus 25",
  "puzzle number 04 ",
  " "
]
string = strings.sample
pp string
# write your program below

letters = string.gsub(/[^a-z]/i, "").length
pp "Number of letters in the string is: #{letters}"

spaces = string.gsub(/[^\s]/i, "").length
pp "Number of spaces in the string is: #{spaces}"

numbers = string.gsub(/[^0-9]/, "").length
pp "Number of digits in the string is: #{numbers}"

	
# Count the
sentences = [
  "the dog, the cat, the zebra, the giraffe",
  "the, the code, and the developer",
  "then the- their"
]
sentence = sentences.sample
# write your program below

counter = sentence.gsub(/[!@,%&"]/,'').gsub(/-/, "").gsub("the ", "1").gsub(/\ the$/, "1").gsub(/[^0-9]/, "").length

pp "'the' appeared #{counter} times"
