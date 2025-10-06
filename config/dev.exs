# config/dev.exs
import Config

config :logger, level: :info

# Simple, readable console format. Add metadata if you like.
config :logger, :console,
  format: "$time [$level] $message\n",
  color: [enabled: true]
