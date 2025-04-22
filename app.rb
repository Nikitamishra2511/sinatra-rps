require "sinatra"
configure :development do
require "sinatra/reloader"


end
get("/") do
 "Hello World"
end
get("/zebra") do
  "we must add a route to each path we want to support"
end
get("/giraffe")do
"Hopefully this shows up without having to restart the server
2d6 = https://special-palm-tree-wrx969gjjg57h5qj-3000.app.github.dev/dice/2/6
"end
get ("/dice/2/6")do
first_die = rand(1..6)
second_die = rand(1..6)
sum= first_die + second_die
outcome ="<h1>2d6</h1>
  <p> You rolled a #{first_die} and a #{second_die} for a total of #{sum}</p>
"
outcome
end
