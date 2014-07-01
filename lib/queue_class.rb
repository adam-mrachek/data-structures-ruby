class QueueClass

  attr_reader :items

  def initialize
    @items = []
  end

  def empty?
    size == 0
  end

  def size
    @items.count
  end

  def enqueue(item)
    @items << item
  end

  def dequeue
    @items.last
  end

  def each
    @items.each do |item|
      yield item
    end
  end

end