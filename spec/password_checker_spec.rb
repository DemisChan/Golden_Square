require 'password_checker'

RSpec.describe PasswordChecker do
  it 'checks if correct password works' do
    pass = PasswordChecker.new
    expect(pass.check('12345678')).to be true
    expect(pass.check('123456789')).to be true
  end

  context 'when ncharacters less than 8' do
    it 'fails' do
      pass = PasswordChecker.new
      expect{ pass.check('')}.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
