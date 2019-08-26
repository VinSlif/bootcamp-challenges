def stringToInteger(str)
	# removes decimals
	str = str.split('.')[0] if str.include?('.')
	# checks for negative
	pos = 1
	if str[0] == '-'
		str = str[1, str.length-1]
		pos = -1
	end

	char = str.chars
	int = 0
	char.reverse.each_with_index do |num, i|
		# converts char to int, ord - 48 = number
		int += (num.ord - 48) * (10**i)
	end

	return int * pos
end

test = "-12340.5"
puts "#{test} is a(n) #{test.class}"
test = stringToInteger(test)
puts "#{test} is a(n) #{test.class}"