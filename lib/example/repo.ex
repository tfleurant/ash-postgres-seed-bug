defmodule Example.Repo do
  use AshPostgres.Repo,
    otp_app: :example
end
