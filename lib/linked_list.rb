class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = nil
  end

  def append(sound)
    if @head.nil?
      @head = Node.new(sound)
    else
      current_node = @head
      new_node = Node.new(sound)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
      # require 'pry'; binding.pry
    end     
    sound
  end

  def count
    count = 1
    if @head.nil?
      count = 0
    else current_node = @head
      while current_node.next_node != nil
        count += 1
        current_node = current_node.next_node
      end
    end
    count
  end

  def to_string
    @head.data
  end
end