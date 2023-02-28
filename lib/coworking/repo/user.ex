defmodule Coworking.Repo.User do
  use Ecto.Schema

  schema "user" do
    field :username, :string
    field :email, :string
    field :name, :string
    field :avatar, :string
    has_one :house, Coworking.Repo.House
    many_to_many :sessions, Coworking.Repo.Session, join_through: "sessions_users"
  end
end
