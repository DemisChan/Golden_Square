require 'report_length'

RSpec.describe "Outputs string length in a text format sentence" do
  it 'should return a sentence describing the length of the given string' do
    a  = 'Hey my name is Demis'.length
    result = report_length('Hey my name is Demis')
    expect(result).to eq "This string was #{a} characters long"
  end
end