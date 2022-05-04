require 'string_builder'

RSpec.describe StringBuilder do
	it "adds multiple srings together" do
		var =  StringBuilder.new()
		var.add("mountain")
		var.add("sea")
		var.size
		result = var.output()
		expect(result).to eq "mountainsea"

	end

end
