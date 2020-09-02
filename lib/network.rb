class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

#adding this extra method to help with the main_characters method
# we should also add a test for this
  def all_characters
    @shows.map do |show|
      show.characters
    end.flatten
  end
# A character is a main character for the network if their salary is greater than 500_000 and their character name has no lowercase letters.
# character.salary > 500000 && (character.name.upcase == character.name)
# instead of putting the above in there, go make a method for characters
  def main_characters
    all_characters.find_all do |character|
      character.main_character?
    end
  end


  def actors_by_show
    hash = Hash.new
    @shows.each do |show|
      hash[show] = show.actors
    end
    hash
  end

  def shows_by_actor
    hash = Hash.new
    all_characters.each do |character|
      hash[character.actor] = shows_with_actor(character.actor)
    end
    hash
  end

  def shows_with_actor(actor)
    @shows.find_all do |show|
      show.actors.include?(actor)
    end
  end

  def prolific_actors
    shows_by_actor.keys.find_all do |actor|
      shows_by_actor[actor].length > 1
    end
  end
end
