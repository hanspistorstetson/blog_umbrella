# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :travel_blog,
  namespace: TravelBlog,
  ecto_repos: [TravelBlog.Repo]

# Configures the endpoint
config :travel_blog, TravelBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "RzN5kjAo+SS4zeoDqW4b0f5F9C+YDZdkea47D3cqML5xgdfV7uLxdNv+nmZzpdbU",
  render_errors: [view: TravelBlogWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TravelBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
