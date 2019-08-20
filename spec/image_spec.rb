require 'spec_helper'

RSpec.describe Image, type: :model do
	describe "blurring should work" do
		it "should blur a single pixel" do
			input = [
				[0, 0, 0, 0],
				[0, 0, 0, 0],
				[0, 0, 0, 0],
				[0, 1, 0, 0],
				[0, 0, 0, 0],
				[0, 0, 0, 0]
			]
			expected = [
				[0, 0, 0, 0],
				[0, 0, 0, 0],
				[0, 1, 0, 0],
				[1, 1, 1, 0],
				[0, 1, 0, 0],
				[0, 0, 0, 0]
			]
			
			image = Image.new(input)
			image.blur(1)
			expect(image.img).to eq expected
		end

		it "should blur two pixels" do
			input = [
				[0, 0, 0, 0],
				[0, 0, 1, 0],
				[0, 0, 0, 0],
				[0, 1, 0, 0],
				[0, 0, 0, 0],
				[0, 0, 0, 0]
			]
			expected = [
				[0, 0, 1, 0],
				[0, 1, 1, 1],
				[0, 1, 1, 0],
				[1, 1, 1, 0],
				[0, 1, 0, 0],
				[0, 0, 0, 0]
			]
			
			image = Image.new(input)
			image.blur(1)
			expect(image.img).to eq expected
		end

		it "should blur a pixel on the edge" do
			input = [
				[0, 0, 0, 0],
				[0, 0, 0, 0],
				[0, 0, 0, 0],
				[0, 0, 0, 0],
				[1, 0, 0, 0],
				[0, 0, 0, 0]
			]
			expected = [
				[0, 0, 0, 0],
				[0, 0, 0, 0],
				[0, 0, 0, 0],
				[1, 0, 0, 0],
				[1, 1, 0, 0],
				[1, 0, 0, 0]
			]
			
			image = Image.new(input)
			image.blur(1)
			expect(image.img).to eq expected
		end
	end
end