require './lib/character'
require 'minitest/autorun'
require 'minitest/pride'

class CharacterTest < MiniTest::Test

  def test_it_exists
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_instance_of Character, kitt
  end

  def test_has_attributes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
require 'pry'; binding.pry
    assert_equal "KITT", kitt.name
    assert_equal "William Daniels", kitt.actor
    assert_equal 1000000, kitt.salary
  end

end
