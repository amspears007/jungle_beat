class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(sound)
    sound.split(" ").each do |sound|
      @list.append(sound)
    end
    sound
  end

  def count
    @list.count
  end

  def play
    `say -r 100 -v Good News #{@list.to_string}`
  end
end