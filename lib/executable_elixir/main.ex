defmodule ExecutableElixir.Main do
  use GenServer

  ##########
  # Client #
  ##########

  def start_link() do
    GenServer.start_link(__MODULE__, %{})
  end

  ######################
  # Server (callbacks) #
  ######################

  def init(state) do
    IO.puts "*** ExecutableElixir ***"

    IO.puts "Checking requirements..."
    IO.puts "done."

    :init.stop()
    {:ok, state}
  end
end
