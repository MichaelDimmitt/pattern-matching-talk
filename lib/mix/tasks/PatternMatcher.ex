defmodule Mix.Tasks.PatternMatcher do
  use Mix.Task

  @shortdoc "runs the handle match  function many different ways."
  def matcher( input ) do
    PatternMatcher.handle_match(input)
    |> IO.inspect()
  end

  def run(_) do
    matcher('tree')
    matcher('building')
    matcher(4)
    matcher(5.2)
    matcher(5)
    matcher({})
    matcher(%{})
    matcher([1 | [ 2, 3] ])
    matcher({ 3, [1 | [ 2, 3] ]})
  end

end
