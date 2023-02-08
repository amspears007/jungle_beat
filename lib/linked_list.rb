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
      until last_node.next_node.nil?
        last_node = last_node.next_node
      end
      last_node.next_node = new_node
    end     
    sound
  end

  def prepend(sound)
    old_head = @head
    @head = Node.new(sound)
    @head.next_node = old_head 
  end

  def insert(position, sound)
    if @head.nil?
      @head = Node.new(sound)
    else
      current_node = @head
      new_node = Node.new(sound)
      (position - 1).times do
       current_node = current_node.next_node 
      end
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
    end
  end

  def find(position, number)
    string_sounds = ""
    current_node = @head
    position.times do
      current_node = current_node.next_node
    end
    number - 1.times do
      string_sounds += "#{current_node.data} " 
      current_node = current_node.next_node
    end
    string_sounds += "#{current_node.data}"
    string_sounds
  end

  def includes?(sound)
    if to_string.include?(sound)
      true
    else
      false
    end
  end

  def count
    count = 1
    if @head.nil?
      count = 0
    else
      last_node = @head
      until last_node.next_node == nil
        count += 1
        last_node = last_node.next_node
      end
    end
    count
  end

  def to_string
    sound_string = ""
    last_node = head
    until last_node.next_node == nil
      sound_string << last_node.data + " "
      last_node = last_node.next_node
    end
      sound_string << last_node.data
  end

  def pop
    if @head.nil?
      @head = Node.new(sound)
    else
      current_node = @head
      until current_node.next_node.next_node == nil
        current_node = current_node.next_node
      end 
      tail = current_node.next_node
      current_node.next_node = nil
      tail.data
    end
  end
end