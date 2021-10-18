defmodule DoliveryApi.Repo.Migrations.CreateOrderItemsTable do
  use Ecto.Migration

  def change do
    create table(:order_items, primary_key: false) do
      add :item_id, references(:product, type: :binary_id)
      add :order_id, references(:order, type: :binary_id)
    end
  end
end
