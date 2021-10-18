defmodule DoliveryApiWeb.UsersController do
  use DoliveryApiWeb, :controller

  alias DoliveryApi.Domain.Users.User

  def create(conn, params) do
    with {:ok, %User{} = user} <- DoliveryApi.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
