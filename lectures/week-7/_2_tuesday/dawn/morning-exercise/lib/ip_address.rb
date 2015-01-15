def valid_ip?(ip)
	
	# is a string?
	if ip.class != String
		return false
	end

	# to an array
	arr = ip.split('.')

	# array size greater or less than 4?
	if arr.count != 4
		return false
	end

	# arr valaues to integers
	arr.map! { |n| n.to_i }

	# greater than 0 less than 255?
	arr.each do |num|
		if num >= 0 && num <= 255
			true
		else
			return false
		end
	end

	# between 0.0..255.255 ?
	return true
end
