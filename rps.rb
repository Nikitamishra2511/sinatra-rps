require "sinatra"
configure :development do
  require "sinatra/reloader"
end

get("/") do
  "
  <h1>Rock Paper Scissors Game</h1>
  <a href='/rock'><button>Play Rock</button></a>
  <a href='/paper'><button>Play Paper</button></a>
  <a href='/scissors'><button>Play Scissors</button></a>
  "
end

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

  result += "<br><a href='/'><button>Play Again</button></a>"
  result
end

get("/paper") do
  user_move = "paper"
  computer_move = ["rock", "paper", "scissors"].sample

  result = "<h2>You played #{user_move.capitalize}</h2>"
  result += "<h2>Computer played #{computer_move.capitalize}</h2>"

  if computer_move == user_move
    result += "<p>It's a tie!</p>"
  elsif computer_move == "rock"
    result += "<p>You win!</p>"
  else
    result += "<p>You lose!</p>"
  end

  result += "<br><a href='/'><button>Play Again</button></a>"
  result
end

get("/scissors") do
  user_move = "scissors"
  computer_move = ["rock", "paper", "scissors"].sample

  result = "<h2>You played #{user_move.capitalize}</h2>"
  result += "<h2>Computer played #{computer_move.capitalize}</h2>"

  if computer_move == user_move
    result += "<p>It's a tie!</p>"
  elsif computer_move == "paper"
    result += "<p>You win!</p>"
  else
    result += "<p>You lose!</p>"
  end

  result += "<br><a href='/'><button>Play Again</button></a>"
  result
end

