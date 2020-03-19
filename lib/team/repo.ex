defmodule Team.Repo do
  use Ecto.Repo,
    otp_app: :team,
    adapter: Ecto.Adapters.Postgres
end
