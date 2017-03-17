defmodule TestBlog.Comment do
  use TestBlog.Web, :model

  schema "comments" do
    field :name, :string
    field :content, :string
    belongs_to :post, TestBlog.Post, foreign_key: :post_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :content, :post_id])
    |> validate_required([:name, :content])
  end
end
