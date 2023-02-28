defmodule Coworking.Repo.Migrations.AddSessionsTable do
  use Ecto.Migration

  def change do
    create table("sessions") do
      add :house_id, references("houses")
      add :date, :date
    end
  end
end
