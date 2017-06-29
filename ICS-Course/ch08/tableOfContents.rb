title='TableofContents'.center(50)
puts title
puts

ch_num = 1
chapters = [['Getting Started', 1],
			['Numbers', 9],
			['Letters', 13]]
			
chapters.each do |ch|

	title = ch[0]
	pg = ch[1]
	
	beginning = 'Chapter' +ch_num.to_s+ ': ' + title
	ending = 'page ' + pg.to_s
	
	puts beginning.ljust(25) + ending.rjust(25)
	ch_num = ch_num+1
end
			