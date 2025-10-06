defmodule Mix.Tasks.Dbg.Run do
  use Mix.Task
  require Logger

  @shortdoc "Runs DbgDemo under the debugger: mix dbg.run <integer>"

  @impl Mix.Task
  def run(args) do
    value =
      with [first | _] <- args,
           {n, ""} <- Integer.parse(first) do
        n
      else
        _ ->
          Mix.raise("""
          Usage: mix dbg.run <integer>
          Example: mix dbg.run 6
          """)
      end

    result = DbgDemo.square(value)
    Logger.info("value=#{value} squared=#{result}")
  end
end
