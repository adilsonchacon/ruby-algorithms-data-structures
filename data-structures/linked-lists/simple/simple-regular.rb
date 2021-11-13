class Node
  attr_accessor :next
  attr_reader   :value

  def initialize(value = 0)
    @value = value
    @next  = nil
  end

  def to_s
    "Node value: #{@value}"
  end
end

@head = Node.new

def add_at_end(node, pointer = @head)
  if pointer.next.nil?
    pointer.next = node
  else
    add_at_end(node, pointer.next)
  end
end

def add_node(val)
  node = Node.new(val)
  add_at_end(node)
end

def print_list(node = @head.next)
  if !node.nil?
    p node.to_s
    print_list(node.next)
  end
end

add_node(3)
add_node(1)
add_node(6)
add_node(8)

print_list()
