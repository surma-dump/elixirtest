defmodule Ssr.Handler do
  def init(req, state) do
    IO.puts(inspect state)
    req = req
      |> :cowboy_req.set_resp_body("Ohai")
      |> :cowboy_req.reply(200)
    {:ok, req, state}
  end
end
