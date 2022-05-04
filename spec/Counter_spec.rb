require 'Counter'

RSpec.describe Counter do
  it 'stores sum of input numbers in Counter class and gives report of total' do
    counter = Counter.new()
    a = 5
    counter.add(a)
    result = counter.report()
    expect(result).to eq "Counted to #{a} so far."
  end
end
