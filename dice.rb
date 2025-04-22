require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  "<h1>2d6</h1>
  <p>You rolled a #{first_die} and a #{second_die} for a total of #{sum}</p>"
end

get("/dice/2/10") do
  first_die1 = rand(1..10)
  second_die1 = rand(1..10)
  sum1 = first_die1 + second_die1
  "<h1>2d10</h1>
  <p>You rolled a #{first_die1} and a #{second_die1} for a total of #{sum1}</p>"
end
