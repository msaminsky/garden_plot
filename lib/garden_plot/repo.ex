defmodule GardenPlot.Repo do
  use Ecto.Repo,
    otp_app: :garden_plot,
    adapter: Ecto.Adapters.Postgres
end
