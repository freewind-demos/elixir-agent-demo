# Elixir Agent
{:ok, agent} = Agent.start_link(fn -> 0 end)

Agent.update(agent, fn state -> state + 1 end)
IO.puts(Agent.get(agent, fn state -> state end))
