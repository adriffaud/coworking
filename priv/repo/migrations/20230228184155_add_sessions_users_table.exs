defmodule Coworking.Repo.Migrations.AddSessionsUsersTable do
  use Ecto.Migration

  def change do
    create table("sessions_users") do
      add :session_id, references("sessions")
      add :user_id, references("users")
    end
  end
end
