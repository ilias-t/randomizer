class List
  attr_reader :items
  def initialize(items)
    @items = items
  end

  def random
    @items.delete(@items.sample)
  end
end



