defmodule Standup.Responders.Advice do
  @moduledoc """
  Random Advice
  Sends random fucking advice when someone says `advice`
  """
  use Hedwig.Responder

  @usage """
  advice - Replies with a random advice.
  """
  hear ~r/advice(!)?/i, msg do
    reply msg, HtmlEntities.decode(Standup.API.Advice.advice.text)
  end

end