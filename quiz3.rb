class Dog
	attr_accessor :breed, :sex

	def initialize(breed, sex)
		self.breed = breed
		self.sex = sex
	end
end

terrier = Dog.new('Scott Terrier', 'Male')