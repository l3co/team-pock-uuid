defmodule Team.Repo.Migrations.CreateTeamMemberSchema do
  use Ecto.Migration

  def change do
    create table(:member, primary_key: false) do
      add :id, :uuid, null: false
      add :name, :string
      add :team_id,  references(:team)
    end
  end
end
