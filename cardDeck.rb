class Card
	attr_accessor :rank, :suit

	def initialize(rank, suit)
		self.rank = rank
		self.suit = suit
	end
	
	def output
		puts "#{self.rank} of #{self.suit}"
	end
end

class Deck
	attr_reader :cards

	def initialize
		@cards = []

		for s in [:spades, :diamonds, :hearts, :clubs] do
			for r in ['A', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
				@cards << Card.new(r, s)
			end
		end
	end

	def shuffle
		@cards.shuffle!
	end

	def deal
		@cards.shift
	end

	def output
		@cards.each do |card|
			card.output
		end
	end
end

deck = Deck.new
deck.shuffle
card = deck.deal
card.output