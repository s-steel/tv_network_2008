require './lib/character'
require './lib/show'
require './lib/network'
require 'minitest/autorun'
require 'minitest/pride'

class NetworkTest < MiniTest::Test

  def test_it_exists
    nbc = Network.new("NBC")
    # kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    # michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    # knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_instance_of Network, nbc
  end

  def test_has_attributes
    nbc = Network.new("NBC")
    # kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    # michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    # knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal "NBC", nbc.name
    assert_equal [], nbc.shows
  end

end
