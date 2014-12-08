require "test_helper"

class MoviesControllerTest < ActionController::TestCase

  def movie
    @movie ||= movies :kenny_is_king
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:movies)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Movie.count') do
      post :create, movie: { date: movie.date, place: movie.place, title: movie.title }
    end

    assert_redirected_to movie_path(assigns(:movie))
  end

  def test_show
    get :show, id: movie
    assert_response :success
  end

  def test_edit
    get :edit, id: movie
    assert_response :success
  end

  def test_update
    put :update, id: movie, movie: { date: movie.date, place: movie.place, title: movie.title }
    assert_redirected_to movie_path(assigns(:movie))
  end

  def test_destroy
    assert_difference('Movie.count', -1) do
      delete :destroy, id: movie
    end

    assert_redirected_to movies_path
  end
end
