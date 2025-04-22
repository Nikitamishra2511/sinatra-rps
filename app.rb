require "sinatra"
configure :development do
require "sinatra/reloader"
end
get("/") do
 "Play Rock button"
 "Play Paper button"
 "Play Scissors button"
end
get("/zebra") do
  "we must add a route to each path we want to support"
end
get("/giraffe")do
"Hopefully this shows up without having to restart the server"
"end
