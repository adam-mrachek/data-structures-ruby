require './lib/stack'

describe Stack do

  let(:stack) { Stack.new }

  it 'can create an empty stack' do
    expect(stack.empty?).to eq true
    expect(stack.size).to eq 0
  end

  it 'can push (add) items to a stack' do
    stack.push("foo")
    expect(stack.empty?).to eq false
    expect(stack.size).to eq 1
  end

  it 'can pop (retrieve) the last item from the stack' do
    stack.push("foo")
    stack.push("bar")
    expect(stack.pop).to eq "bar"
    expect(stack.empty?).to eq false
  end

  it 'allows iteration through the stack' do
    stack.push("foo")
    stack.push("bar")
    stack.push("foobar")

    actual = []

    stack.each do |item|
      actual << item
    end

    expect(actual).to eq ["foobar", "bar", "foo"]
  end

end