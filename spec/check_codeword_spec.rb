require 'check_codeword'

RSpec.describe "check_codeword method" do
  it 'returns wrong message if input is incorrect' do
    result = check_codeword('bomb')
    expect(result).to eq "WRONG!"
  end

  it 'returns correct message if input is correct' do
    result = check_codeword('horse')
    expect(result).to eq 'Correct! Come in.'
  end

  it 'returns close message if input has first and last letter correct' do
    result = check_codeword('hirse')
    expect(result).to eq "Close, but nope."
  end

  it 'returns wrong message if input has first letter correct' do
    result = check_codeword('hey')
    expect(result).to eq "WRONG!"
  end

  it 'returns wrong message if input has last letter correct' do
    result = check_codeword('else')
    expect(result).to eq "WRONG!"
  end
end
