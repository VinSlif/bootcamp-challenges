class Tree
	attr_accessor :data, :children
	
	def initialize(data, children=[])
		@data = data
		@children = children
	end
end

# The "Leafs" of a tree, elements that have no children 
# end nodes
deep_fifth_node = Tree.new(5) # 5
eleventh_node = Tree.new(11) # 6
fourth_node = Tree.new(4) # 7

# The "Branches" of the tree
# nodes with connections
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node]) # 3
ninth_node = Tree.new(9, [fourth_node]) # 4
seventh_node = Tree.new(7, [sixth_node]) # 1
shallow_fifth_node = Tree.new(5, [ninth_node]) # 2

# The "Trunk" of the tree
# base
trunk = Tree.new(2, [seventh_node, shallow_fifth_node]) # 0


# Depth-First Search
# searches nodes to end points before moving to siblings
def depthFirstSearch(target, node)
	return nil if node.nil? # checks if node is nil
	if node.data == target
		return node
	else
		node.children.each do |n|
			t = depthFirstSearch(target, n) # checks child for target
			next if t.nil?
			return t
		end
	end
	return nil
end

# Breadth-First Search
# searches branch levels before moving to children
def breadthFirstSearch(target, node)
	queue = []
	queue << node # creates array
	queue.each do |n| # checks each child
		return n if n.data == target
		n.children.each { |c| queue.push(c) }
	end
	return nil # return if found nothing
end

# Find node that returns 11
target = 11
depthSearch = depthFirstSearch(target, trunk)
puts defined?(depthSearch.data) ? depthSearch.inspect : "target could not be found"

breadthSearch = breadthFirstSearch(target, trunk)
puts defined?(breadthSearch.data) ? breadthSearch.inspect : "target could not be found"