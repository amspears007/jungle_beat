class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = nil
  end

  def append(sound)
    if @head.nil?
      @head = Node.new(sound)
    else
      current_node = @head
      new_node = current_node.next_node 
      while current_node.next_node != nil
          current_node = current_node.next_node
        end
      new_node = Node.new(sound)
    end     
    sound
  end

  def count
    @head.data.split.count
  end

  def to_string
    @head.data
  end
end