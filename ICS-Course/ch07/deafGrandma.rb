puts 'HUH?! SPEAK UP, SONNY!'
while true
	answer = gets.chomp
		if answer == "BYE"
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
