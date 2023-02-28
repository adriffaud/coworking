defmodule Coworking.Repo.House do
  use Ecto.Schema

  schema "house" do
    field :address, :string
    belongs_to :user, Coworking.Repo.User
    has_many :session, Coworking.Repo.Session
  end
end
