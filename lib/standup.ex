defmodule Standup do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      worker(Standup.Robot, [])
      # Starts a worker by calling: Standup.Worker.start_link(arg1, arg2, arg3)
      # worker(Standup.Worker, [arg1, arg2, arg3]),
    ]
    add_jobs()
    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Standup.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def add_jobs do
    Quantum.add_job(:standup, %Quantum.Job{
      schedule: Application.get_env(:standup, Standup.Responders.Standup)[:time_of_day],
      task: fn -> Standup.Responders.Standup.run end
    })
  end
end
