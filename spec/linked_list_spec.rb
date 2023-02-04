require 'spec_helper' 
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do
  it 'is an instance of a linked_list and the head starts empty' do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to be_nil
  end

  it 'adds additional node to end of list' do
    list = LinkedList.new
    list.append("doop")
    
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to be_nil
   
    list.append("deep")
   
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end

  it 'counts how many things in the list' do
    list = LinkedList.new
    list.append("doop")
    
    expect(list.count).to eq(1)

    list.append("deep")

    expect(list.count).to eq(2)

    list.append("yes")

    expect(list.count).to eq(3)
  end

  it 'generates a string of all the elements in the list, separated by spaces' do
    list = LinkedList.new
    list.append("doop")

    expect(list.to_string).to eq("doop")

    list.append("deep")

    expect(list.to_string).to eq("doop deep")

    list.append("yes")

    expect(list.to_string).to eq("doop deep yes")
  end
end