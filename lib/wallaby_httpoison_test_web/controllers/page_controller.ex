defmodule WallabyHttpoisonTestWeb.PageController do
  use WallabyHttpoisonTestWeb, :controller

  def index(conn, params) do
    render(conn, "index.html", success?: params["success"])
  end

  def create(conn, _) do
    Process.sleep(25)

    conn
    |> redirect(to: "/?success=DONE")
  end
end
