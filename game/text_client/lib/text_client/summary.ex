defmodule TextClient.Summary do

  def display(game = %{tally: tally}) do
    IO.puts [
      "\n",
      "Word so far: #{Enum.join(tally.letters, " ")}\n",
      "Guesses left: #{tally.turns_left}\n",
      "Wrong Guesses: #{Enum.join(tally.incorrect_guesses, " ")}\n"
    ]
    game
  end

end
