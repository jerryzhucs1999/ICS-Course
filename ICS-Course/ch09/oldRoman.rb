def old_school_rome numeral
	puts numeral
	num = gets.chomp.to_i
	rome = ''
	
	rome = rome + 'M' * (num/1000)
	rome = rome + 'D' * (num%1000/500)
	rome = rome + 'C' * (num%500/100)
	rome = rome + 'L' * (num%100/50)
	rome = rome + 'X' * (num%50/10)
	rome = rome + 'V' * (num%10/5)
	rome = rome + 'I' * (num%5/1)
	
	return rome
	
end

answer = old_school_rome 'Enter a number and I will convert it to old school Roman numerals'
puts answer 