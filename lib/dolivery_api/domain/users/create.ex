defmodule DoliveryApi.Domain.Users.Create do
  alias DoliveryApi.Domain.Users.User
  alias DoliveryApi.Repo

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %User{}} = result), do: result

  defp handle_insert({:error, result}), do: result
end
