num = 99
while num >= 2
	puts num.to_s+ ' bottles of beer on the wall, ' +num.to_s+ ' bottles of beer. Take one down and pass it around, ' +(num-1).to_s+ ' bottles of beer on the wall.'
	num = num-1
	if num == 1
		break
	end
end
puts '1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall.'
puts 'No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.'