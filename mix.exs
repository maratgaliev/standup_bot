defmodule Standup.Mixfile do
  use Mix.Project

  def project do
    [app: :standup,
     version: "0.0.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison, :hedwig_slack, :quantum, :calendar, :timex],
     mod: {Standup, []}]
  end

  defp description do
    """
    Standup Slack Bot for Elixir.
    """
  end

  defp package do
    [
      licenses: ["MIT"],
      keywords: ["Elixir", "Slack"],
      maintainers: ["Marat Galiev"],
      links: %{"GitHub" => "https://github.com/maratgaliev/standup_bot"}
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 0.9.1"},
      {:ex_doc, "~> 0.13.1", only: [:dev, :docs]},
      {:hedwig_slack, "~> 1.0"},
      {:quantum, "1.8.1", github: "c-rack/quantum-elixir"},
      {:html_entities, "~> 0.3"},
      {:calendar, "~> 0.16.1"},
      {:timex, "~> 3.0"}
    ]
  end
end
