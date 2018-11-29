defmodule ExSimpleGraph.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_simple_graph,
      version: "0.1.3",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: ["lib", "test/support"],
      description: "A handful of useful tools for dealing with simple, undirected graphs",
      source_url: "https://github.com/otherchris/ExSimpleGraph",
      package: [
        name: "ex_simple_graph",
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/otherchris/ExSimpleGraph"}
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:mix_test_watch, "~> 0.8", only: :dev, runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:credo, "~> 0.10.0", only: [:dev, :test], runtime: false},
    ]
  end
end
