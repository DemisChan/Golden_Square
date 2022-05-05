require 'present'

RSpec.describe Present do
  context 'when variable is already set inside the wrap method' do
    it 'fails' do
      present = Present.new
      present.wrap('scooter')
      expect { present.wrap('scooter') }.to raise_error 'A contents has already been wrapped.'
      expect(present.unwrap).to eq 'scooter'
    end
  end
  context 'when variable is nil/not set in wrap method' do
    it 'fails' do
      present = Present.new
      expect { present.unwrap }.to raise_error 'No contents have been wrapped.'
    end
  end

  it 'wraps and unwraps as should' do
    present = Present.new
    present.wrap('scooter')
    expect(present.unwrap).to eq 'scooter'
  end
end
