defmodule Ex1.MovieController do
  use Ex1.Web, :controller

  def index(conn, _params) do
    render conn, "movies.html"
  end
end
