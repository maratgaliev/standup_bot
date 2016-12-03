defmodule Standup.Parser do

  def parse_advice(object) do
    struct(Standup.Model.Advice, object)
  end

end