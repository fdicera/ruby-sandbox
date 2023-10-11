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
