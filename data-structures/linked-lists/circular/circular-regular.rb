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
  if pointer.next.nil? || pointer.next == @head
    pointer.next = node
    node.next = @head
  else
    add_at_end(node, pointer.next)
  end
end

def add_node(val)
  node = Node.new(val)
  add_at_end(node)
end

def print_n_times(n, counter = 1, node = @head.next)
  return if node.nil?

  if node != @head
    p node.to_s
    print_n_times(n, counter, node.next)
  elsif n > counter
    print_n_times(n, counter + 1, node.next)
  end
end

add_node(3)
add_node(1)
add_node(6)
add_node(8)

print_n_times(2)
