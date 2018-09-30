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
    Process.send_after(self(), :stopnow, 100)

    IO.puts "*** ExecutableElixir ***"

    IO.puts "Checking requirements..."
    IO.puts "done."

    :init.stop()
    {:ok, state}
  end
end
