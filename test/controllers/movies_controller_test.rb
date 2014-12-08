require "test_helper"

class MoviesControllerTest < ActionController::TestCase

  def movie
    @movie ||= movies :kenny_is_king
  end

  test "index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies)
  end

  test "test_new" do
    get :new
    assert_response :success
  end

  test "create" do
    assert_difference('Movie.count') do
      post :create, movie: { date: movie.date, place: movie.place, title: movie.title }
    end

    assert_redirected_to movie_path(assigns(:movie))
  end

  test "show" do
    get :show, id: movie
    assert_response :success
  end

  test "edit" do
    get :edit, id: movie
    assert_response :success
  end

  test "update" do
    put :update, id: movie, movie: { date: movie.date, place: movie.place, title: movie.title }
    assert_redirected_to movie_path(assigns(:movie))
  end

  test "destroy" do
    assert_difference('Movie.count', -1) do
      delete :destroy, id: movie
    end

    assert_redirected_to movies_path
  end
end
