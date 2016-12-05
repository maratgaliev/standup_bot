defmodule Standup.Responders.EventFetcher do
  use Timex

  def run do
    # Getting google calendar standup object
    # standup = Standup.API.Calendar.standup
    # # Parse standup time  
    # standup_time = standup.start[:dateTime]
    # # Get timezone
    # timezone = standup.start[:timeZone]
    # # Parse datetime
    # date = Calendar.DateTime.Parse.rfc3339(standup_time, timezone)
    # # Convert date with timezone
    # cron_time = Timezone.convert(elem(date, 1), Timezone.get("Europe/Moscow", Timex.now))
    # Add schedule
    Quantum.add_job(:standup_job, 
      %Quantum.Job{
        schedule: "45 10 * * *", #{}"#{cron_time.minute} #{cron_time.hour} * * *,
        task: fn -> Standup.Responders.Standup.run end,
        timezone: "Europe/Moscow"
    })
  end

end