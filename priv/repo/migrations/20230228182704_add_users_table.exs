defmodule Coworking.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table("users") do
      add :username, :string
      add :email, :string
      add :name, :string
      add :avatar, :string

      timestamps()
    end
  end
end
