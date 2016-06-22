defmodule Uuid.Mixfile do
  use Mix.Project

  def project do
    [app: :uuid,
     version: "1.5.2-rc1",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:quickrand, "~> 1.5.2-rc1"}]
  end

  defp description do
    "Erlang UUID Implementation"
  end

  defp package do
    [name: :uuid_erl,
     files: ~w(src include doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"GitHub" => "https://github.com/okeuday/uuid"}]
   end
end
