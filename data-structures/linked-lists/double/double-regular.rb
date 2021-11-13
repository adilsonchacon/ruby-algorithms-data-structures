class Node
  attr_accessor :next
  attr_accessor :previuos
  attr_reader   :value

  def initialize(value = 0)
    @value = value
    @next  = nil
    @previuos  = nil
  end

  def to_s
    "Node value: #{@value}"
  end
end

@head = Node.new
@tail = Node.new

def add_at_end(node, pointer = @head)
  if pointer.next.nil?
    node.previuos = pointer
    pointer.next = node

    @tail.previuos = node
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

def print_list_reverse(node = @tail.previuos)
  if !node.previuos.nil?
    p node.to_s
    print_list_reverse(node.previuos)
  end
end

add_node(3)
add_node(1)
add_node(6)
add_node(8)

p "List"
print_list()

p "List (reverse)"
print_list_reverse()
