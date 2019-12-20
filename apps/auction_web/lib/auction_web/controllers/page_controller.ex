defmodule AuctionWeb.PageController do
  use AuctionWeb, :controller

  alias Auction

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
