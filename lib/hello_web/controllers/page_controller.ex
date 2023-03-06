defmodule HelloWeb.PageController do
  use HelloWeb, :controller
  alias Hello.UserEmail
  alias Hello.Mailer

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def landing(conn, _params) do
    render(conn, "landing.html")
  end

  def signup(conn, params) do
    IO.puts("okay")
    email = Hello.UserEmail.welcome(%{name: params["name"], email: params["email"]})
    Hello.Mailer.deliver(email)
    render(conn, "thanks.html")
    # user = create_user!(params)

    # UserEmail.welcome(user) |> Mailer.deliver()
  end
end
