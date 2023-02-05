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
    # require 'pry'; binding.pry
    new_node.next_node = last_node.next_node
    last_node.next_node = new_node
    end
  end

  def find(position, number)
    string_sounds = []
    current_node = @head
    position.times do
      current_node = current_node.next_node
    end
    number.times do
      string_sounds << current_node.data 
      current_node = current_node.next_node
      # require 'pry'; binding.pry
    end
    string_sounds.join(" ")
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
       #Looking for end of list +>(last_node.next_node = nil)
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
        #need to find the next to last node b/c the last node 
        #is going to be removed
        # require 'pry'; binding.pry
        current_node = current_node.next_node
        #setting next node to current node
        # require 'pry'; binding.pry
      end
      tail = current_node.next_node
      # require 'pry'; binding.pry
      current_node.next_node = nil
      tail.data
    end
  end
end