defmodule Hello.EmailView do
  use Phoenix.View, root: "lib/hello_web/emails"

  def render("welcome.html", assigns) do
    "<h1>Welcome to my app!</h1>
     <p>Hi #{assigns.name},</p>
     <p>Thank you for signing up for my app. We're excited to have you on board!</p>"
  end
end
