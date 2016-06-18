defmodule Ex1.MovieController do
  use Ex1.Web, :controller

  alias Ex1.Movies

  def index(conn, _params) do
    render conn, "movies.html", movies: Movies.all
  end
  def new(conn, _params) do
    render conn, "new.html"
  end
  def create(conn, %{"movie" => movie}) do
    Movies.insert movie
    redirect conn, to: "/movies"
  end
  def show(conn, %{"id" => id}) do
    render conn, "movie.html", movie: Movies.get(id)
  end
end
