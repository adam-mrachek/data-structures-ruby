require './lib/queue_class'

describe QueueClass do

  let(:queue) { QueueClass.new }

  it 'can create an empty Queue' do
    expect(queue.empty?).to eq true
    expect(queue.size).to eq 0
  end

  it 'can add an item to the queue' do
    queue.enqueue("foo")
    expect(queue.empty?).to eq false
    expect(queue.size).to eq 1
  end

  it 'returns the item at the end of the queue' do
    queue.enqueue("foo")
    queue.enqueue("bar")
    expect(queue.dequeue).to eq "bar"
  end

  it 'should only add items to the front of the queue' do
    queue.enqueue("foo")
    queue.enqueue("bar")
    expect(queue.items.first).to eq "foo"
  end

end