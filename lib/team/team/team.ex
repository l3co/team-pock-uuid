defmodule Team.Team do
  use Ecto.Schema
  import Ecto.Changeset

  schema "team" do
    field :external_id, Ecto.UUID, autogenerate: true
    field :name, :string
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
