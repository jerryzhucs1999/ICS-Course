def modern_rome numeral
	puts numeral
	num = gets.chomp.to_i
	rome = ''
	
	four = (num/1000)
	three = (num%1000/100)
	two = (num%100/10)
	one = (num%10/1)
	
	rome = rome + 'M' * four
	
	if three == 9
		rome = rome + 'CM'
	elsif three == 4
		rome = rome + 'CD'
	else 
		rome = rome + 'D' * (num%1000/500)
		rome = rome + 'C' * (num%500/100)
	end
	
	if two == 9
		rome = rome + 'XC'
	elsif two == 4
		rome = rome + 'XL'
	else 
		rome = rome + 'L' * (num%100/50)
		rome = rome + 'X' * (num%50/10)
	end
	
	if one == 9
		rome = rome + 'IX'
	elsif one == 4
		rome = rome + 'IV'
	else 
		rome = rome + 'V' * (num%10/5)
		rome = rome + 'I' * (num%5/1)
	end
	
	return rome
	
end

answer = modern_rome 'Enter a number and I will convert it to modern Roman numerals'
puts answer 