defmodule Auction do
  alias Auction.Item

  @repo Auction.Repo

  def list_items do
    @repo.all(Item)
  end

  def get_item(id) do
    @repo.get!(Item, id)
  end

  def get_item_by(attrs) do
    @repo.get_by(Item, attrs)
  end

  def insert_item(attrs) do
    %Item{}
    |> Item.changeset(attrs)
    |> @repo.insert
  end

  def new_item, do: Item.changeset(%Item{})

  def delete_item(%Item{} = item), do: @repo.delete(item)

  def update_item(%Item{} = item, updates) do
    item
    |> Item.changeset(updates)
    |> @repo.update()
  end

  def edit_item(id) do
    get_item(id)
    |> Item.changeset()
  end
end
