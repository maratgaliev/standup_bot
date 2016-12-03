defmodule Standup.API.Base do
  @doc """
  General HTTP `GET` request function.
  """
  def get(url) do
    url |> HTTPoison.get! |> decode
  end

  def decode(data) do
    Poison.decode!(data.body, keys: :atoms)
  end
end