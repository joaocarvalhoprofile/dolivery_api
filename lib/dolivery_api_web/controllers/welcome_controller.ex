defmodule DoliveryApiWeb.WebcomeController do
  use DoliveryApiWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{server: "Server Dolivery 2021"})
  end
end
