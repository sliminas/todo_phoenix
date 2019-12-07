# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todo_phoenix,
  ecto_repos: [TodoPhoenix.Repo]

# Configures the endpoint
config :todo_phoenix, TodoPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3sefhRxm7tD8DEuXT+VIsyTfy3JdKbLuExQS8R9kwgFZOVjU3LCgNw9ED9GQ75mC",
  render_errors: [view: TodoPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodoPhoenix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
