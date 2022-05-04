require 'string_builder'

RSpec.describe StringBuilder do
  context 'initially' do
    it "initially report to empty string" do
      var =  StringBuilder.new()
      expect(var.output).to eq ""
    end

    it 'initially returns the legth of 0' do
      var = StringBuilder.new
      expect(var.size).to eq 0
    end
  end

  context 'adding strings' do
    it 'returns given string' do
      var = StringBuilder.new
      var.add("mountain")
		  expect(var.output).to eq "mountain"
    end

    it 'returns multi-string' do
      var = StringBuilder.new
      var.add("mountain")
      var.add("lion")
		  expect(var.output).to eq 'mountainlion'
    end

    it 'returns multi-string' do
      var = StringBuilder.new
      var.add("mountain")
      var.add("lion")
		  expect(var.size).to eq 12
    end
  end
end
