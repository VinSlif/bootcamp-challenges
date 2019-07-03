class  Image
	def initialize(img)
		@img = img
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
	[0, 0, 0, 0],
	[0, 1, 0, 0],
	[0, 0, 0, 1],
	[0, 0, 0, 0]
  ])
  image.output_image