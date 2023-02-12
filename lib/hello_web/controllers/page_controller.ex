defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def landing(conn, _params) do
    render(conn, "landing.html")
  end

  def create(conn, params) do
    email = params["email"]

    email_data = %Swoosh.Email{
      to: email,
      from: "cookiebusiness@example.com",
      subject: "Welcome to Our Cookie Business!",
      html_body: "Thanks for signing up! We can't wait to share our delicious cookies with you."
    }

    Swoosh.send_email(email_data)

    conn
    |> put_flash(:info, "Thanks for signing up! We'll keep you updated.")
    |> redirect(to: "/")
  end

end
