defmodule Standup.Model.Advice do
  defstruct id: nil, text: nil, sound: nil
end

defmodule Standup.Model.Events do
  defstruct events: nil
end

defmodule Standup.Model.Event do
  defstruct description: nil, summary: nil, guestsCanInviteOthers: nil, guestsCanSeeOtherGuests: nil, location: nil, recurrence: nil, reminders: nil, start: nil, end: nil, summary: nil, transparency: nil, visibility: nil
end
