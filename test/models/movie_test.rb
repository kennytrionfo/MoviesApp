require "test_helper"

class MovieTest < ActiveSupport::TestCase

  def movie
    @movie ||= Movie.new
  end

  def test_valid
    assert movie, "The movie isn't valid for some reason Kdog"
  end

  test "that test is valid" do 
  	assert true 
  end

  test "requires a title to be valid" do
  	movie = Movie.new
  	assert !movie.valid?
  end

  test "requires a title using refute" do 
  	movie = Movie.new
  	refute movie.valid?
  end




end
