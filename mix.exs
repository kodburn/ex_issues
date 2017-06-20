defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [app: :issues,
     version: "0.1.0",
     name: "Github Issues",
     source_url: "https://github.com/kodburn/ex_issues",
     escript: escript_config,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger, :httpoison, :poison]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.9"},
      {:poison,    "~> 2.2"},
      {:ex_doc,    "~> 0.16.1"},
      {:earmark,   "~> 1.2", override: true}
    ]
  end

  defp escript_config do
    [main_module: Issues.CLI]
  end
end
