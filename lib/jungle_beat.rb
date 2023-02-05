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
    `say -r 100 -v Boing #{@list.to_string}`
    # require 'pry'; binding.pry
  end
end