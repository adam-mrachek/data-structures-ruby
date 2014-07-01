require './lib/stack'

describe Stack do

  let(:stack) { Stack.new }

  it 'can create an empty stack' do
    expect(stack.empty?).to eq true
    expect(stack.size).to eq 0
  end

  it 'can add items to the stack' do
    stack.push('foo')
    expect(stack.empty?).to eq false
    expect(stack.size).to eq 1
  end

  it 'can return the last item added' do
    stack.push('foo')
    stack.push('bar')
    stack.push('foobar')

    expect(stack.pop).to eq 'foobar'
  end

  it 'can iterate over the stack' do
    stack.push('foo')
    stack.push('bar')
    stack.push('foobar')

    actual = []

    stack.each do |item|
      actual << item
    end

    expect(actual).to eq ['foo', 'bar', 'foobar']
  end

end