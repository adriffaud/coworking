defmodule PhoenixCoworking.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_coworking,
    adapter: Ecto.Adapters.SQLite3
end
