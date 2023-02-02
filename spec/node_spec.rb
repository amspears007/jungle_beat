require './lib/node'

RSpec.describe Node do
  it 'is an instance of node and has a slot for data and next node' do
    node = Node.new("plop")
  end
end