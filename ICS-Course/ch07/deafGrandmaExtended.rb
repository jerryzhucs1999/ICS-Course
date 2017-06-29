puts 'HUH?! SPEAK UP, SONNY!'
var=0
while true
	answer = gets.chomp
		if answer == "BYE"
			var=var+1
		else
			var = 0
		end
		
		if var == 3
			puts 'BYE SWEETIE!'
			break
		end		
		
		if answer == answer.upcase
			year = 1930+rand(21)
			puts 'NO, NOT SINCE ' +year.to_s+ '!'
		else
			puts 'HUH?! SPEAK UP SONNY!'
		end
end
