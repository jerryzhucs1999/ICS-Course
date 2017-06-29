def shuffle array
shuf = []

	while array.length > 0
	
	random = rand(array.length)
	
	current = 0
	new_array = []
		array.each do |var|
			if current == random
				shuf.push var
			else
				new_array.push var
			end
			current = current + 1
		end
	
	array = new_array
	end
shuf
end
puts(shuffle(['Hello', 'there', 'my', 'name', 'is', 'Jerry', 'Zhu', 'Hello', 'Zhu', 'Zhu']))

