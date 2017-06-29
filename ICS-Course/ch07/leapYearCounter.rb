puts 'I will tell you how the leap years in between two years'
puts 'Pick a starting year.'
start = gets.chomp.to_i
puts 'Pick an ending year.'
ending = gets.chomp.to_i
puts 'These are your leap years: '

year = start

while year <= ending
	if year%4 == 0
		if year%100 != 0 || year%400 == 0
			puts year
		end
	end
	
	year=year+1
end

