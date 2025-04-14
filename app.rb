require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:home)

end

get("/process_roll") do
  @rolls = []

  @num_dice = params.fetch("dice").to_i
  @num_sides = params.fetch("sides").to_i

  @num_dice.times do
    die = rand(1..@num_sides)

    @rolls.push(die)

  end

  erb(:flexible)

end
