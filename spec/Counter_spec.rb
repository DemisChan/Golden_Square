require 'Counter'

RSpec.describe Counter do
  it 'stores sum of input numbers in Counter class and gives report of total' do
    counter = Counter.new()
    a = 5
    counter.add(a)
    result = counter.report()
    expect(result).to eq "Counted to 5 so far."
  end

  it 'fails the test with a given number' do
    counter = Counter.new()
    a = 7
    counter.add(a)
    result = counter.report()
    expect(result).not_to eq "Counted to 8 so far."
  end
    
end
