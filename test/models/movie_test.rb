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

  test "same as above" do 
  	#Arrange:
  	bambi = Movie.new title: "Crazy Title"
  	#Act:
  	#Assert:
  	assert bambi.valid?
  end

  test "requires a title using refute" do 
  	movie = Movie.new
  	refute movie.valid?
  end

#---------------- Create in CRUD -------------Kenny Trionfo---12/3/2014--------
  test "should create a new article" do 
  	#Arrange:
  	newey = Movie.new
  	newey.title = "Funky White Boy"
  	newey.date = "All week"
  	newey.place = "The whole world"
  	#Act: 

  	#Assert: 
  	assert newey.save
  end

#-------- The Update ability in CRUD --------Kenny Trionfo---12/3/2014--------
  test "should update movie" do 
  	#Arrange 
  	movie = Movie.new
  	movie.title = "cool title"
  	#Act 

  	#Assert
  	assert movie.update_attributes(:title => "new title")
  end

end


