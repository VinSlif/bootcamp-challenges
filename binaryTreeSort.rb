class BinaryTree
	class Node
		attr_accessor :data, :left, :right
		def initialize(data, left=nil, right=nil)
			@data = data
			@left = left
			@right = right
		end
	end

	def self.initialize(arr)
		@root = Node.new(arr.shift)
		# populates tree
		arr.each { |n| createNode(n, @root) }
	end

	def self.createNode(val, node)
		# creates new node if passed node doesn't exist
		return Node.new(val) if node.nil?

		# checks passed val against passed node
		if val < node.data
			node.left = createNode(val, node.left)
		else
			node.right = createNode(val, node.right)
		end
		return node # returns node values
	end

	def self.sort(arr)
		initialize(arr) # creates tree
		@sorted = []
		traverse(@root)
		return @sorted
	end

	def self.traverse(node)
		return nil if node.nil?

		traverse(node.left) if !node.left.nil?
		@sorted << node.data
		traverse(node.right) if !node.right.nil?
	end
end


tree = BinaryTree.sort([7, 4, 9, 1, 6, 14, 10])
puts tree.inspect