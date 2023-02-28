defmodule Coworking.Repo.Migrations.AddHousesTable do
  use Ecto.Migration

  def change do
    create table("houses") do
      add :address, :string
      add :user_id, references("users")
    end
  end
end
