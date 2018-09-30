defmodule ExecutableElixir do
  @moduledoc """
  Documentation for ExecutableElixir.
  """

  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      worker(ExecutableElixir.Main, [])
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
