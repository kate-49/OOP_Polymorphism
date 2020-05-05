class Profile

  def initialize(name, bio, age)
    @name = name
    @bio = bio
    @age = age
  end

  def profile
    "#{@name}, born in #{(Time.new.year - @age)}: #{@bio}"
  end

end
