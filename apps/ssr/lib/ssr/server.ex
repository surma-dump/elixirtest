defmodule Ssr.Server do
  use Task

  def start_link(arg) do
    Task.start_link(__MODULE__, :run, arg)
  end

  def run(_arg) do
    IO.puts "Running Ssr.Server"
    dispatch = :cowboy_router.compile [
      {'_', [
        {"/", Ssr.Handler, []}
      ]}
    ]
    {:ok, _listener} = :cowboy.start_clear(:http, [port: 8081], %{env: %{dispatch: dispatch}})
  end
end
