defmodule DoliveryApi.Repo do
  use Ecto.Repo,
    otp_app: :dolivery_api,
    adapter: Ecto.Adapters.Postgres
end
