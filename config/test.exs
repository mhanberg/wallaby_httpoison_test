use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wallaby_httpoison_test, WallabyHttpoisonTestWeb.Endpoint,
  http: [port: 4002],
  server: true

config :wallaby,
  driver: Wallaby.Experimental.Chrome,
  chrome: [headless: true]

# Print only warnings and errors during test
config :logger, level: :warn
