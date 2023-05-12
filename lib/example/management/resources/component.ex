defmodule Example.Management.Component do
  # Using Ash.Resource turns this module into an Ash resource.
  use Ash.Resource,
    # Tells Ash you want this resource to store its data in Postgres.
    data_layer: AshPostgres.DataLayer

  # The Postgres keyword is specific to the AshPostgres module.
  postgres do
    # Tells Postgres what to call the table
    table "components"
    # Tells Ash how to interface with the Postgres table
    repo(Example.Repo)
  end

  actions do
    defaults [:create, :read, :update, :destroy]
  end

  # Attributes are simple pieces of data that exist in your resource
  attributes do
    attribute :code, :string do
      allow_nil? false
      primary_key? true
    end

    attribute :target_version, :string do
      allow_nil?(false)
    end
  end
end
