require "sinatra"

configure :development do
  require "sinatra/reloader"
end
get("/") do
  erb :monkey
end
get("/rock") do
  user_move = "rock"
  computer_move = ["rock", "paper", "scissors"].sample

  result = "<h2>You played #{user_move.capitalize}</h2>"
  result += "<h2>They played #{computer_move.capitalize}</h2>"

  if computer_move == user_move
    result += "<p>It's a tie!</p>"
  elsif computer_move == "scissors"
    result += "<p>You win!</p>"
  else
    result += "<p>You lose!</p>"
  end
  result
end
get("/paper") do
  user_move = "paper"
  computer_move = ["rock", "paper", "scissors"].sample

  result = "<h2>You played #{user_move.capitalize}</h2>"
  result += "<h2>They played #{computer_move.capitalize}</h2>"

  if computer_move == user_move
    result += "<p>It's a tie!</p>"
  elsif computer_move == "rock"
    result += "<p>You win!</p>"
  else
    result += "<p>You lose!</p>"
  end

  result
end

get("/scissors") do
  user_move = "scissors"
  computer_move = ["rock", "paper", "scissors"].sample

  result = "<h2>You played #{user_move.capitalize}</h2>"
  result += "<h2>They played #{computer_move.capitalize}</h2>"

  if computer_move == user_move
    result += "<p>It's a tie!</p>"
  elsif computer_move == "paper"
    result += "<p>You win!</p>"
  else
    result += "<p>You lose!</p>"
  end

  result
end
