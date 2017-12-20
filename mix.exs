#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule Uuid.Mixfile do
  use Mix.Project

  def project do
    [app: :uuid_erl,
     version: "1.7.2",
     language: :erlang,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [
       :quickrand]]
  end

  defp deps do
    [{:quickrand, "~> 1.7.2"}]
  end

  defp description do
    "Erlang UUID Implementation"
  end

  defp package do
    [name: :uuid_erl,
     files: ~w(src include doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/okeuday/uuid"}]
   end
end
