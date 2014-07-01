class Stack

  def initialize
    @items = []
  end

  def empty?
    size == 0
  end

  def size
    @items.length
  end

  def push(item)
    @items.insert(0, item)
  end

  def pop
    @items.first
  end

  def each(&block)
    @items.each do |item|
      block.call item
    end
  end

end