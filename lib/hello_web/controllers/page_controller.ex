defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def landing(conn, _params) do
    render(conn, "landing.html")
  end


end
