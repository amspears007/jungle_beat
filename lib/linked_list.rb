class LinkedList
  attr_reader :head

  def initialize(head = nil)
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
    data
  end

  def count
    @head.data.split.count
  end

  def to_string
    @head.data
  end
end