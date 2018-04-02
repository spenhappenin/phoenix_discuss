defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field :title, :string
  end

  # struct: struct/object of how the db looks now
  # params: object of data we want to update with
  def changeset(struct, params \\ %{}) do
    struct
    # cast: how we get to where we are to where we need to be
    |> cast(params, [:title])
    |> validate_required([:title])
    # changeset object gets returned from this and that is what updates the db
  end
end
