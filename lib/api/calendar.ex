defmodule Standup.API.Calendar do
  import Standup.API.Base
  import Standup.Parser
  @doc """
  Fetch a `%Standup.Model.Event` representing a calendar event.
  """

  def standup do
    get("#{System.get_env("CALENDAR_API_URL")}/?q=standup") |> parse_events |> List.first
  end

  def all_events do
    get(System.get_env("CALENDAR_API_URL")) |> parse_events
  end

end