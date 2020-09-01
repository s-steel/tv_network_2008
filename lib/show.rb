class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total = 0
    characters.each do |character|
      total += character.salary
    end
    total
  end

  def highest_paid_actor
    high_salary = characters.max_by do |char|
      char.salary
    end
    high_salary.actor
  end

end
