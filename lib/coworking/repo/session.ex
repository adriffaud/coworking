defmodule Coworking.Repo.Session do
  use Ecto.Schema

  schema "session" do
    field :date, :date
    belongs_to :house, Coworking.Repo.House
    many_to_many :users, Coworking.Repo.User, join_through: "sessions_users"
  end
end
