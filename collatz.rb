def collatzNum(x)
	return (x % 2 == 0) ? x / 2 : (x * 3) + 1
end

def collatzLength(n, show=false)
	i = 1
	str = n.to_s
	while n != 1
		n = collatzNum(n)
		i += 1
		str += " > " + n.to_s
	end
	puts str if show
	return i
end

collatzTest = nil
longestLen = 0
longestN = nil
(1..1000000).each do |i|
	collatzTest = collatzLength(i)
	if collatzTest > longestLen
		longestN = i
		longestLen = collatzTest
		puts "n: " + longestN.to_s + "    - length: " + longestLen.to_s
	end
end

puts "\n\nFINAL RESULT"
puts "n: " + longestN.to_s + "    - length: " + longestLen.to_s