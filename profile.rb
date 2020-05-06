class Profile

  def initialize(name, bio, age)
    @name = name
    @bio = bio
    @age = age
  end

  def profile
    "#{@name}, born in #{send(:birth_year)}: #{@bio}"

  end

  private
  def birth_year
    Time.new.year - @age
  end

end
