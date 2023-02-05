require 'spec_helper' 


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

  it 'adds node to beginning of the list' do
    list = LinkedList.new
    list.append("plop")
    
    expect(list.to_string).to eq("plop")
    
    list.prepend("dop")

    expect(list.to_string).to eq("dop plop")

    list.append("suu")

    expect(list.to_string).to eq("dop plop suu")

    list.prepend("wee")

    expect(list.to_string).to eq("wee dop plop suu")
    expect(list.count).to eq(4)
  end

  it 'can insert one or more elements at a given position in the list' do
    list = LinkedList.new
    list.append("plop")
    list.prepend("dop")
    list.insert(1, "woo")
    
    expect(list.to_string).to eq("dop woo plop")
  end

  it 'can find and return elements' do
    list = LinkedList.new
    list.append("plop")
    list.prepend("dop")
    list.insert(1, "woo")
    list.append("suu")

    expect(list.to_string).to eq("dop woo plop suu")

    expect(list.find(1, 2)).to eq("woo plop")
  end

  it 'returns true or false whether the supplied value is in the list' do
    list = LinkedList.new
    list.append("plop")
    list.prepend("dop")
    list.insert(1, "woo")
    list.append("suu")

    expect(list.to_string).to eq("dop woo plop suu")
    expect(list.includes?("dop")).to eq(true)
    expect(list.includes?("what")).to eq(false)
  end

  it 'removes the last element from the list' do
    list = LinkedList.new
    list.append("plop")
    list.prepend("dop")
    list.insert(1, "woo")
    list.append("suu")

    expect(list.to_string).to eq("dop woo plop suu")
    expect(list.pop).to eq("suu")
    expect(list.to_string).to eq("dop woo plop")
  end
end