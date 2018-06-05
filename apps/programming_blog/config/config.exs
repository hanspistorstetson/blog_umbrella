# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :programming_blog,
  namespace: ProgrammingBlog,
  ecto_repos: [ProgrammingBlog.Repo]

# Configures the endpoint
config :programming_blog, ProgrammingBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T9IOTNO2NH4NCsiEbEnwjEeWE/WKwzxG8Vn/zxCc7FEWUvIVjhxm70I2RzGEySdB",
  render_errors: [view: ProgrammingBlogWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProgrammingBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
