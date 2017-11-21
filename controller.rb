require('sinatra')
require('sinatra/reloader')
require_relative('models/game.rb')

get '/:player1/:player2' do
  player1 = params[:player1]
  player2 = params[:player2]
  return "Invalid player 1 choice!" if !["rock", "paper", "scissors"].include?(player1)
  return "Invalid player 2 choice!" if !["rock", "paper", "scissors"].include?(player2)
  game = Game.new(player1, player2)
  @result = game.result
  erb(:result)
end

get '/welcome' do
  erb(:welcome)
end
