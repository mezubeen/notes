def longest_word(string)
	arr = string.split(' ')
	lengths = []

	arr.each do |word|
		lengths << word.length
	end

	aindex = lengths.index(lengths.max)
	return arr[aindex]
end
