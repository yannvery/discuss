defmodule Release.Tasks do
  def migrate do
    {:ok, _} = Application.ensure_all_started(:my_app)

    path = Application.app_dir(:discuss, "priv/repo/migrations")

    Ecto.Migrator.run(Discuss.Repo, path, :up, all: true)
  end
end
