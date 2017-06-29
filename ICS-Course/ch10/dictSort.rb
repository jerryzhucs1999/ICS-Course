def dictionary_sort arr
	capital_sort arr, []
end

def capital_sort unsorted, sorted

	if unsorted.length <= 0
		return sorted
	end

smallest = unsorted.pop
still_unsorted = []

	unsorted.each do |var|
		if var.downcase < smallest.downcase
			still_unsorted.push smallest
			smallest = var
		else
			still_unsorted.push var
		end
	end

sorted.push smallest
capital_sort still_unsorted, sorted
end

puts(dictionary_sort(['Hello', 'there', 'MY', 'Name', 'is', 'Jerry', 'Zhu', 'hello', 'zhu', 'Zhu']))