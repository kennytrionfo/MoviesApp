require "test_helper"

class MovieTest < ActiveSupport::TestCase

  def movie
    @movie ||= Movie.new
  end

  def test_valid
    assert movie.valid?
  end

  test "that test is valid" do 
  	assert true 
  end

  test "requires a title to be valid" do
  	movie = Movie.new
  	assert !movie.valid?
  end

end
