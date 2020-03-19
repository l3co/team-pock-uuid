defmodule TeamWeb.Router do
  use TeamWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TeamWeb do
    pipe_through :api
  end
end
