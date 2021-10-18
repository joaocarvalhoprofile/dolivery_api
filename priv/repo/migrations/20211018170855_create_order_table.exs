defmodule DoliveryApi.Repo.Migrations.CreateOrderTable do
  use Ecto.Migration

  def change do
    create table(:order) do
      add :user_id, references(:user, type: :binary_id)
      add :address, :string
      add :comments, :string
      add :payment_method, :payment_method

      timestamps()
    end
  end
end
