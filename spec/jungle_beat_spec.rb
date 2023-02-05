require 'spec_helper'

RSpec.describe JungleBeat do
  it 'is an instance of JungleBeat' do
    jb = JungleBeat.new

    expect(jb).to be_an_instance_of(JungleBeat)
  end

  it 'appends data properly by splitting the string and counts it' do
    jb = JungleBeat.new

    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    expect(jb.append("woo hoo shu")).to eq("woo hoo shu")
    expect(jb.count).to eq(6)
  end

  it 'plays' do
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")

    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
    jb.play
  end
end