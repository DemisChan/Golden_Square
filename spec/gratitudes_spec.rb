require 'gratitudes'

RSpec.describe Gratitudes do
    it 'outpout empty expression' do
      gr = Gratitudes.new
      expect(gr.format).to eq "Be grateful for: "
    end

  context 'check additions to array' do
    it 'return expression with added gratitudes as a string' do
      gr = Gratitudes.new()
      gr.add('my health')
      expect(gr.format).to eq "Be grateful for: my health"
    end

    it 'return expression with added gratitudes as a multi string' do
      gr = Gratitudes.new()
      gr.add('my health')
      gr.add('my job.')
      expect(gr.format).to eq "Be grateful for: my health, my job."
    end

    it 'measure the size of array after additions' do
      gr = Gratitudes.new()
      gr.add('my health')
      a = gr.add('my job.')
      expect(a.size).to eq 2
    end
  end
end