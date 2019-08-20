module Luhn
	def self.is_valid?(number)
		# Converts number to array
		charArr = number.to_s.each_char.map {|c| c.to_i}
		
		# Gets total iterations from end
		i = charArr.length - 1
		# Tracks every second digit from end
		secondCnt = 0
		# Tracks sum
		sum = 0
		while i >= 0 do
			digit = charArr[i]
			# Checks if second digit from end
			if secondCnt == 1
				# Doubles
				digit *= 2
				# Checks if greater than/equal to 10
				digit -= 9 if digit >= 10

				secondCnt = 0
			else
				secondCnt += 1
			end

			sum += digit
			i -= 1
		end

		return sum % 10 == 0
	end
end