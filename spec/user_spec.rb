require './user.rb'

describe User do

  describe '#authenticate' do
    it 'will return true if both passwords match' do
      test = User.new('kate', 'bio', 25, 'testpassword')
      expect(test.authenticate('testpassword')).to eq(true)
    end

    it 'will return false if passwords do not match' do
      test = User.new('kate', 'bio', 25, 'password')
      expect(test.authenticate('test')).to eq(false)
    end
  end

  it 'will not allow profile to be accessed if authentication is false' do
    user = User.new('kate', 'bio', 25, 'password')
    expect(user.profile).to eq("authentication failed")
  end

  it 'will allow profile to be accessed if authenticated' do
    user = User.new('kate', 'bio', 25, 'password')
    user.authenticate('password')
    expect(user.profile).to eq("kate, born in 1995: bio")
  end

end
