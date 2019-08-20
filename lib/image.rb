class Image
	attr_accessor :img
	
	def initialize(img)
		@img = img
	end
	
	def blur(n)
		(1..n).each { self.transform }
	end

	def transform
		out = Marshal.load(Marshal.dump(@img))
		leny = @img.length - 1
		lenx = @img[0].length - 1

		@img.each_index do |i|
			@img[i].each_index do |j|
				next if @img[i][j] == 0

				if i > 0 # above
					out[i - 1][j] = 1
				end
				if j > 0 # left
					out[i][j - 1] = 1
				end

				if i < leny # below
					out[i + 1][j] = 1
				end
				if j < lenx # right
					out[i][j + 1] = 1
				end
			end
		end
		@img = out
	end

	def output_image
		out = []
		for i in @img
			out << i.join(" ")
		end
		puts out
	end
end