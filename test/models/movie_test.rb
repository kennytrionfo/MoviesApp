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

#---------------- The Create in CRUD -------------Kenny Trionfo---12/3/2014--------
  test "create a new article" do 
  	#Arrange:
  	newey = Movie.new
  	newey.title = "Funky White Boy"
  	newey.date = "All week"
  	newey.place = "The whole world"
  	#Act: 

  	#Assert: 
  	assert newey.save
  end

#---------------- The Read in CRUD -------------Kenny Trionfo---12/5/2014--------
  test "find a movie" do 
    #Arrange 
    #in below: movies is the name of the .yml file that the fixture titled 'return_of_kenny resides'
    movie_id = movies(:return_of_kenny).id
    #Act 

    #Assert
    #
    assert_nothing_raised { Movie.find(movie_id) }
    end

#-------- The Update in CRUD --------Kenny Trionfo---12/3/2014--------
  test "update movie" do 
    #Arrange 
    movie = Movie.new
    movie.title = "cool title"
    #Act 

    #Assert
    assert movie.update_attributes(:title => "new title")
  end

#-------- The Destroy in CRUD -------------Kenny Trionfo---12/5/2014--------
  test "destroy movie" do 
    #Arrange 
    movie = movies(:return_of_kenny)
    #Act 
    movie.destroy
    #Assert    
    assert_raise(ActiveRecord::RecordNotFound) {Movie.find(movie.id)}
  end

end


