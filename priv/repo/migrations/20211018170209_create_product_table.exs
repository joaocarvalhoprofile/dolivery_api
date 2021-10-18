defmodule DoliveryApi.Repo.Migrations.CreateProductTable do
  use Ecto.Migration

  def change do
    create table(:product) do
      add :category, :item_category
      add :description, :string
      add :price, :decimal
      add :photo, :string

      timestamps()
  end
end
