require 'greet'

RSpec.describe "greet method" do
  it "says hello to parameter name" do
    result  = greet('Demis')
    expect(result).to eq "Hello, Demis!"
  end
end
