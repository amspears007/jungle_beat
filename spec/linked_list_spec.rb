require 'spec_helper' 
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end

  it 'adds functionality and appends nodes' do
    list = LinkedList.new
    
    expect(list.head).to be_nil
    expect(list.append("doop")).to eq("doop")
    expect(list.head.next_node).to be_nil
    
  end

  xit 'updates methods to add additional node' do
    list = LinkedList.new
    list.append("doop")
    
    node = list.head
    
    expect(list.head.data).to eq("doop")
    expect(node.next_node).to be_nil
   
    list.append("deep")
    expect(node.next_node).to eq(new_node)
    expect(list.append("deep")).to eq("deep")
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end

  it 'counts items in list' do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq(1)
    expect(list.to_string).to eq("doop")

    list.append("deep")

    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")

  end
end