require "test_helper"

class MoviesHelperTest < ActionView::TestCase
  include MoviesHelper

  # def test_sanity
  #   flunk "Need real tests"
  # end

#Not really sure how this works actually. 
  test "should return the movie name" do
    test_movie = Movie.new(title:"I'm the title", date:"I'm the date", place:"I'm the place")
    assert test_movie.title
  end

end
