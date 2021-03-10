defmodule ElixirCli.CLI do
  def main([]), do: IO.puts("Please enter valid move (rock, paper, scissors)")

  def main(args) do
    make_move()
    |> winner(List.first(args))
    |> IO.puts()
  end

  defp make_move do
    Enum.random(["rock", "paper", "scissors"])
  end

  @message "You lost computer played: "

  def winner("paper", "rock"), do: @message <> "paper"
  def winner("rock", "scissors"), do: @message <> "rock"
  def winner("scissors", "paper"), do: @message <> "scissors"

  def winner(computer, you) when computer == you, do: "Tie: #{computer}"

  def winner(computer, you) do
    if Enum.any?(["rock", "paper", "scissors"], &(&1 == you)) do
      "You won, computer played: #{computer}"
    else
      "Enter a valid move (rock, paper, scissors)"
    end
  end
end
