defmodule Coworking.Repo do
  use Ecto.Repo,
    otp_app: :coworking,
    adapter: Ecto.Adapters.SQLite3
end
