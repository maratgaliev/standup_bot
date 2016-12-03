use Mix.Config

config :standup, Standup.Robot,
  adapter: Hedwig.Adapters.Slack,
  name: "standup",
  aka: "/",
  token: System.get_env("SLACK_API_TOKEN"),
  rooms: [],
  responders: [
    {Hedwig.Responders.Help, []},
    {Hedwig.Responders.Ping, []},
    {Standup.Responders.Advice, []}
  ]

config :standup, Standup.Responders.Standup,
  time_of_day: "45 10 * * *",
  slack_channel: System.get_env("STANDUP_CHANNEL"),
  suffix: ["guys", "folks", "hackers", "peeps", "avengers"],
  msg: "Standup time"

config :quantum, timezone: :local