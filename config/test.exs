import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :garden_plot, GardenPlot.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "garden_plot_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :garden_plot, GardenPlotWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "exMu4HgGy+h7YL9yoWi1mY9aBe2ZnO8oSYH9VofX9TCn0I0t2TqcEvlgWEDD8Sje",
  server: false

# In test we don't send emails.
config :garden_plot, GardenPlot.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
