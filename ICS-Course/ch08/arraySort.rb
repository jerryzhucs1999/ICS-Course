puts 'I will sort out the words you give me. Press Enter to stop giving me words'
list = []

while true
	word=gets.chomp
		if word == ''
			break
		end
	list.push word
end

puts 'Here are your words in Alphabetical order'
puts list.sort


	