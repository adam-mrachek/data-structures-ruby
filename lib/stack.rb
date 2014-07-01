class Stack

  def initialize
    @items = ""
  end

  def empty?
    size == 0
  end

  def size
    @items.split(" ").count
  end

  def push(item)
    @items << "#{item} "
  end

  def pop
    @items.split(" ").last
  end

  def each(&block)
    @items.split(" ").each do |item|
      block.call item
    end
  end

end