defmodule Standup.API.Calendar do
  import Standup.API.Base
  import Standup.Parser
  @doc """
  Fetch a `%Standup.Model.Event` representing a calendar event.
  """

  def events do
    get("https://arcane-taiga-84638.herokuapp.com") |> parse_events
  end

end