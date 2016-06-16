require_relative 'spec_helper'
require_relative '../lib/list'

describe "list" do
  subject(:list){List.new(["Jimi", "Alice", "Bob"])}

  it "returns all the items" do
    expect(list.items).to eq(["Jimi", "Alice", "Bob"])
  end

  it "picks a random student from the list" do
    expect(list.random).to be_an_instance_of String
  end

  it "removed the picked student from the set of items" do
    random_item = list.random
    expect(list.items).not_to include(random_item)
  end

end