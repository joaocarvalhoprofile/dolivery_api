defmodule DoliveryApiWeb.UsersView do
  use DoliveryApiWeb, :view

  alias DoliveryApi.Domain.Users.User

  def render("create.json", %{user: %User{} = user}) do
    %{
      messge: "User created",
      user: user
    }
  end

  def render("user.json", %{user: %User{} = user}) do
    %{user: user}
  end
end
