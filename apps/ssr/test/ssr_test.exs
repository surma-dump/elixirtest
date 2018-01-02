defmodule SsrTest do
  use ExUnit.Case
  doctest Ssr

  test "greets the world" do
    assert Ssr.hello() == :world
  end
end
