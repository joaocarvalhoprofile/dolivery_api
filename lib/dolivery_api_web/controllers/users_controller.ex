defmodule DoliveryApiWeb.UsersController do
  use DoliveryApiWeb, :controller

  alias DoliveryApi.Domain.Users.Create
  alias DoliveryApi.Domain.Users.User

  def create(conn, params) do
    with {:ok, %User{} = user} <- Create.call(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
