defmodule Hello.UserEmail do
  use Phoenix.Swoosh,
  template_root: "lib/hello_web/templates/emails",
  template_path: "welcome"

  def welcome(user) do
    new()
    |> to({user.name, user.email})
    |> from({"The Cookie Shop", "hello@cookies.com"})
    |> subject("#{user.name}, you've made the list")
    |> render_body("welcome.html", %{name: user.name})
  end
end
