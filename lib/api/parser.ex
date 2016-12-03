defmodule Standup.Parser do

  def parse_advice(object) do
    struct(Standup.Model.Advice, object)
  end

  def parse_event(object) do
    struct(Standup.Model.Event, object)
  end

  def parse_events(object) do
    Enum.map(object, &parse_event/1)
  end

end