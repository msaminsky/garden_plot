defmodule GardenPlotWeb.PageController do
  use GardenPlotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
