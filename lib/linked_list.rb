class LinkedList
  attr_accessor :head

  def initialize(head = nil)
    @head = nil
  end

  def append(sound)
    if @head.nil?
      @head = Node.new(sound)
    else
      last_node = @head
      new_node = Node.new(sound)
      while last_node.next_node != nil
        last_node = last_node.next_node
      end
      last_node.next_node = new_node
    end     
    sound
  end

  def prepend(sound)
    #Add node to beginning of list
    if @head.nil?
      @head = Node.new(sound)
    else
      old_head = @head
      @head = Node.new(sound)
      new_head = @head
      @head.next_node = old_head
    end
  end

  def insert(position, sound)
    if @head.nil?
      @head = Node.new(sound)
    else
      last_node = @head
      new_node = Node.new(sound)
      (position - 1).times do
       last_node = last_node.next_node 
    end
    new_node.next_node = last_node.next_node
    last_node.next_node = new_node
    end
  end

  def count
    count = 1
    if @head.nil?
      count = 0
    else
       #Looking for end of list +>(last_node.next_node = nil)
      last_node = @head
      while last_node.next_node != nil
        count += 1
        last_node = last_node.next_node
      end
    end
    count
  end

  def to_string
    sound_string = ""
    last_node = head
    while last_node.next_node != nil
      sound_string << last_node.data + " "
      last_node = last_node.next_node
    end
      sound_string << last_node.data
  end

  
end