require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game.rb')

class TestGame < Minitest::Test

  def test_result__player1_win
    game = Game.new("rock", "scissors")
    assert_equal("Player 1 wins with rock!", game.result)
  end

  def test_result__player2_win
    game = Game.new("rock", "paper")
    assert_equal("Player 2 wins with paper!", game.result)
  end

  def test_result__draw
    game = Game.new("rock", "rock")
    assert_equal("Draw", game.result)
  end

end
