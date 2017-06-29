def english_number number
	if number < 0 # No negative numbers.
		return 'Please enter a number that isn\'t negative.'
	end
	
	if number == 0
		return 'zero'
	end
# No more special cases! No more returns!

num_string = '' # This is the string we will return.

ones_place = ['one', 'two', 'three', 'four', 'five', 'six','seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen' , 'eighteen', 'nineteen']
above = [['hundred', 2], ['thousand' , 3], ['million', 6], ['billion', 9],
['trillion' , 12],
['quadrillion' , 15],
['quintillion' , 18],
['sextillion' , 21],
['septillion' , 24],
['octillion' , 27],
['nonillion' , 30],
['decillion' , 33],
['undecillion' , 36],
['duodecillion' , 39],
['tredecillion' , 42],
['quattuordecillion' , 45],
['quindecillion' , 48],
['sexdecillion' , 51],
['septendecillion' , 54],
['octodecillion' , 57],
['novemdecillion' , 60],
['vigintillion' , 63],
['googol', 100]]

# "left" is how much of the number
# we still have left to write out.
# "write" is the part we are
# writing out right now.
# write and left...get it? :)

left = number

	while above.length > 0
		ab_pair = above.pop
		ab_name = ab_pair[0]
		ab_base = 10 ** ab_pair[1]
		write = left/ab_base 
		left = left - write*ab_base 
		
			if write > 0
			
			prefix = english_number write
			num_string = num_string + prefix + ' ' + ab_name
				
				if left > 0
				
				num_string = num_string + ' '
				end
			end
	end
	
write = left/10 # How many tens left?
left = left - write*10 # Subtract off those tens.

	if write > 0
		if ((write == 1) and (left > 0))
		# Since we can't write "tenty-two" instead of
		# "twelve", we have to make a special exception
		# for these.
			num_string = num_string + teenagers[left-1]
		# The "-1" is because teenagers[3] is
		# 'fourteen' , not 'thirteen'.
		# Since we took care of the digit in the
		# ones place already, we have nothing left to write.
			left = 0
		else
			num_string = num_string + tens_place[write-1]
			# The "-1" is because tens_place[3] is
			# 'forty', not 'thirty'.
		end
		
		if left > 0
		# So we don't write 'sixtyfour' ...
			num_string = num_string + '-'
		end
	end
	
write = left # How many ones left to write out?
left = 0 # Subtract off those ones.

	if write > 0
		num_string = num_string + ones_place[write-1]
		# The "-1" is because ones_place[3] is
		# 'four', not 'three'.
	end

# Now we just return "num_string"...
num_string
end

puts english_number( 0)
puts english_number( 1231)
puts english_number( 12)
puts english_number( 14)
puts english_number( 11)
puts english_number( 124533)
puts english_number( 2989327)
puts english_number( 1924867239467823)
puts english_number(192486473)
puts english_number(1398473)
puts english_number(2349444)
puts english_number(333333)
puts english_number(234323)
puts english_number(232456543)
