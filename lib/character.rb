class Character
  attr_reader :name, :actor, :salary
  def initialize(name: name, actor: actor, salary: salary)
    @name = name
    @actor = actor
    @salary = salary
  end

  def main_character?
    @salary > 500000 && name_all_upcase?
  end

#you don't need to break this out, but it could be healpful if you end up needing it else where.
  def name_all_upcase?
    @name.upcase == @name
  end

end
