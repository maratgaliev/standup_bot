defmodule Standup.API.Advice do
  import Standup.API.Base
  import Standup.Parser
  @doc """
  Fetch a `%Standup.Model.Advice` representing a advice.
  """

  def advice do
    get("http://fucking-great-advice.ru/api/random") |> parse_advice
  end

end