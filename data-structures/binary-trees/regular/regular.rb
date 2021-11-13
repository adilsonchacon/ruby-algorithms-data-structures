class Node
  attr_accessor :left
  attr_accessor :right
  attr_reader   :value

  def initialize(value = 0)
    @value = value
    @next  = nil
  end

  def to_s
    "Node value: #{@value}"
  end
end

@head = nil

def add_in_tree(node, pointer = @head)
  if node.value > pointer.value
    pointer.right.nil? ? pointer.right = node : add_in_tree(node, pointer.right)
  elsif node.value < pointer.value
    pointer.left.nil? ? pointer.left = node : add_in_tree(node, pointer.left)
  end
end

def add_node(val)
  node = Node.new(val)
  if @head.nil?
    @head = node
  else
    add_in_tree(node)
  end
end

def print_list(node = @head)
  if !node.left.nil?
    print_list(node.left)
  end

  p node.to_s

  if !node.right.nil?
    print_list(node.right)
  end
end

add_node(3)
add_node(1)
add_node(6)
add_node(8)

print_list()
