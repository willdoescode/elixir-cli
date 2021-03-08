defmodule ElixirCliTest do
  use ExUnit.Case

  test "test the winner" do
    assert ElixirCli.CLI.winner("paper", "rock") == "You lost computer played: paper"
    assert ElixirCli.CLI.winner("rock", "scissors") == "You lost computer played: rock"
    assert ElixirCli.CLI.winner("scissors", "paper") == "You lost computer played: scissors"
    assert ElixirCli.CLI.winner("scissors", "scissors") == "Tie: scissors"

    assert ElixirCli.CLI.winner("scissors", "sdklfjsdlkj") ==
             "Enter a valid move (rock, paper, scissors)"

    assert ElixirCli.CLI.winner("rock", "paper") == "You won, computer played: rock"
  end

  # test "greets the world" do
  #   assert ElixirCli.hello() == :world
  # end
end
