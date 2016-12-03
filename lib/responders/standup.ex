defmodule Standup.Responders.Standup do
  @moduledoc """
  Module that sends message when its Standup time
  """

  @doc """
  Function to call for sending standup notice
  """
  def run do
    msg = %Hedwig.Message{
      type: "message",
      room: "#{config[:slack_channel]}",
      text: "<!channel|@channel>: #{config[:msg]}, #{Hedwig.Responder.random(config[:suffix])}!",
    }
    pid = :global.whereis_name("standup")
    Hedwig.Robot.send(pid, msg)
  end

  defp config, do: Application.get_env(:standup, Standup.Responders.Standup)
end