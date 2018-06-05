defmodule ProgrammingBlogWeb.PageController do
  use ProgrammingBlogWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
