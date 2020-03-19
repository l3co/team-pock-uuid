defmodule Team.Repo.Migrations.CreateSchema do
  use Ecto.Migration

  def change do
    create table(:team) do
      add :external_id, :uuid, null: false
      add :name, :string
    end

    create unique_index(:team, [:external_id])
  end
end
