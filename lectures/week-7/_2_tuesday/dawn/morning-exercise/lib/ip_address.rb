<<<<<<< HEAD
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
=======
# ip address validator
def valid_ip?(address)
  #ternary that validates number count if string or returns false
  address.is_a?(String) ? validate_number_count(address) : false
end

# validates that there are exactly 4 numbers in the address
def validate_number_count(address)
  address_arr = address.split(".")
  address_arr.count == 4 ? validate_range(address_arr) : false
end

# validates that the number's value lies within a range
def validate_range(address_arr)
  address_arr.all? do |number|
    number.to_i <= 255 && number.to_i >= 0
  end
>>>>>>> c787f8544025523a6b7d4091a6e39c0527c7ed45
end
