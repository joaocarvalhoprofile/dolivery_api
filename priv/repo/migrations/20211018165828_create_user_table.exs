defmodule DoliveryApi.Repo.Migrations.CreateUserTable do
  use Ecto.Migration

  def change do
    create table :user do
      add :name, :string
      add :email, :string
      add :password_hash, :string
      add :cpf, :string
      add :age, :integer
      add :cep, :string
      add :address, :string

      timestamps()
    end

    create unique_index(:user, [:cpf])
    create unique_index(:user, [:email])
  end
end
