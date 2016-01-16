=begin
This program will find shomany times a substring was found in an array
This program is based on a ruby project lead by the The Odin Project
http://www.theodinproject.com/ruby-programming/building-blocks	
=end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input_string, array)
	results = {}
	array.each do |array_string|
		#counts the number of times a string from the array is in the input_string
		count = input_string.downcase.scan(array_string.downcase).count
		
		if count > 0
			results[array_string] = count
		end

	end
	results
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)