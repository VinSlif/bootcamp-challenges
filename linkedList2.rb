class LinkedListNode
	attr_accessor :value, :next_node
	
	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end

class Stack
	attr_reader :data
	
	def initialize
		@data = nil
	end
	
	def push(value)
		@data = LinkedListNode.new(value, @data)
	end
	
	def pop
		if @data
			value = @data.value
			@data = @data.next_node
			return value
		else
			return nil
		end
	end
end


def print_values(list_node)
	if list_node
		print "#{list_node.value} --> "
		print_values(list_node.next_node)
	else
		print "nil\n"
		return
	end
end

def reverse_list(list_node)
	stack = Stack.new

	while list_node
		stack.push(list_node.value)

		list_node = list_node.next_node
	end

	return stack.data
end

# Determines if a linked list has a cycle
def isCyclical?(list_node)
	slow = list_node
	fast = list_node

	# Checks if the node exists and has a next node
	while fast != nil && fast.next_node != nil do
		slow = slow.next_node
		fast = fast.next_node.next_node
		return true if slow == fast
	end
	return false
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

# 12 --> 99 --> 37 --> nil
print_values(node3)

# puts "-------"

node3 = reverse_list(node3)

# 37 --> 99 --> 12 --> nil
print_values(node3)

puts(isCyclical?(node3))