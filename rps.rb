get("/rock") do
  user_move = "rock"
  computer_move = ["rock", "paper", "scissors"].sample

  result = "<h2>You played #{user_move.capitalize}</h2>"
  result += "<h2>Computer played #{computer_move.capitalize}</h2>"

  if computer_move == user_move
    result += "<p>It's a tie!</p>"
  elsif computer_move == "scissors"
    result += "<p>You win!</p>"
  else
    result += "<p>You lose!</p>"
  end
