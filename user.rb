require_relative 'profile.rb'

class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
    @authentic_password = false
  end

  def authenticate(candidate_password)
    if candidate_password == @password
      @authentic_password = true
    else
      @authentic_password = false
    end
  end

  def profile
    return "authentication failed" unless @authentic_password == true
    @profile = Profile.new(@name, @bio, @age)
    @profile.profile
  end

end
