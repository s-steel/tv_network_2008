class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    # char = []
    # shows.find_all do |show|
    #   char << show.characters
    # end
    # char.first
    shows.select do |show|
      show.highest_paid_actor
    end
  end

  def actors_by_show
    actor_show = Hash.new
    shows.map do |show|
      char = show.characters
      actor_show[show] << char.name

    end


  end
end
