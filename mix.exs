defmodule RePG2.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [
      app: :repg2,
      version: @version,
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
      dialyzer: [plt_file: ".dialyxir/.local.plt"],
      source_url: "https://github.com/antipax/repg2",
      docs: [
        main: "readme",
        extras: ["README.md"],
        source_ref: "v#{@version}"
      ],
      description: description,
      package: package
    ]
  end

  def application do
    [
      applications: [:logger],
      mod: {RePG2.Application, []}
    ]
  end

  defp deps do
    [
      {:credo, "~> 0.3", only: [:dev, :test]},
      {:dialyxir, "~> 0.3", only: [:dev, :test]},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end

  defp description do
    "A translation of the original Erlang pg2 implementation to Elixir for educational purposes."
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Eric Entin"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/antipax/repg2"
      }
    ]
  end
end
