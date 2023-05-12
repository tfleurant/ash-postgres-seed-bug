import Config

# Configure your database
config :example, Example.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "example_dev",
  port: 5432,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
