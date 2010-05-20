require 'test_helper'

class PokemonTest < ActiveSupport::TestCase
  def setup
    @pikachu = Pokemon.new(:name => "Pikachu") 
    @pikachus_evolution = Pokemon.new(:name => "Pikachu's Evolution", :parent => @pikachu)
  end
  
  test "should have a parent pokemon" do
    assert_equal @pikachu, @pikachus_evolution.parent
  end
  
  test "should also be valid without a parent pokemon" do
    assert @pikachu.valid?
  end
end
