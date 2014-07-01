class QueueClass

  def initialize
    @items = ""
  end

  def empty?
    size == 0
  end

  def size
    @items.split(" ").count
  end

  def enqueue(item)
    @items << "#{item} "
  end

  def dequeue
    @items.split(" ").first
  end

  def each
    @items.split(" ").each do |item|
      yield item
    end
  end

end