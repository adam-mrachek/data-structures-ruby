require './lib/queue_class'

describe QueueClass do

  let(:queue) {QueueClass.new}

  it 'can create an empty queue' do
    expect(queue.empty?).to eq true
    expect(queue.size).to eq 0
  end

  it 'can add items to the queue' do
    queue.enqueue('foo')
    expect(queue.empty?).to eq false
    expect(queue.size).to eq 1
  end

  it 'can return the item at the end of the queue' do
    queue.enqueue('foo')
    queue.enqueue('bar')
    queue.enqueue('foobar')
    expect(queue.dequeue).to eq 'foo'
  end

  it 'can iterate through the items' do
    queue.enqueue('foo')
    queue.enqueue('bar')
    queue.enqueue('foobar')

    actual = []

    queue.each do |item|
      actual << item
    end

    expect(actual).to eq ['foo', 'bar', 'foobar']
  end

end