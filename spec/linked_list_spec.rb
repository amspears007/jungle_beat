require 'spec_helper' 

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end

  it 'adds functionality and appends nodes' do
    list = LinkedList.new
    
    expect(list.head).to be_nil
    expect(list.append("doop")).to eq("doop")




  end
end