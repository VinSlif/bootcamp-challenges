class  Image
	def initialize(img)
		@img = img
	end
	
	def blur(n)
		(1..n).each { |i| self.transform }
	end

	def transform
		out = []
		len = @img[0].length
		# gets indexes of all 1s in array
		@img.each_index {|i| j = @img[i].index 1; out << [i, j] if j}

		out.each do |px|
			if px[0] - 1 >= 0# above
				@img[px[0] - 1][px[1]] = 1
			end
			if px[0] + 1 < len # below
				@img[px[0] + 1][px[1]] = 1
			end
			if px[1] - 1 >= 0 # left
				@img[px[0]][px[1] - 1] = 1
			end
			if px[1] + 1 < len # right
				@img[px[0]][px[1] + 1] = 1
			end
		end
	end

	def output_image
		out = []
		for i in @img
			out << i.join
		end
		puts out
	end
end



image = Image.new([
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 1, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 1]
])

image.output_image
image.blur(3)
puts("\n")
image.output_image