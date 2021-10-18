defmodule DoliveryApi do
  alias DoliveryApi.Domain.Users.Create, as: UserCreate

  # User
  defdelegate create_user(params), to: UserCreate, as: :call
end
