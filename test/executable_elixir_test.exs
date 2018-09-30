defmodule ExecutableElixirTest do
  use ExUnit.Case
  doctest ExecutableElixir

  test "greets the world" do
    assert ExecutableElixir.hello() == :world
  end
end
