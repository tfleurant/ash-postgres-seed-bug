defmodule Example.Management do
  use Ash.Api

  resources do
    registry Example.Management.Registry
  end
end
