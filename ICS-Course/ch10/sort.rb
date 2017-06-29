def sort arr
	rec_sort arr,[]
end

def rec_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted 
	end
	
	smallest = unsorted.pop
	still_unsorted = []
	
	unsorted.each do |var| 
		if var < smallest
			still_unsorted.push smallest
			smallest = var
		else
			still_unsorted.push var
		end
	end

	sorted.push smallest
	rec_sort still_unsorted, sorted 
end
puts (sort(['Hello', 'there', 'my', 'name', 'is', 'Jerry', 'Zhu', 'Hello', 'Zhu', 'Zhu']))