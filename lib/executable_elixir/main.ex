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
    # schedule_work() # Schedule work to be performed on start
    {:ok, state}
  end
end
