class Game
  def initialize(input_player1, input_player2)
    @player1_choice = input_player1
    @player2_choice = input_player2
  end

  def result
    win = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }
    return "Draw" if @player1_choice == @player2_choice
    return "Player 1 wins with #{@player1_choice}!" if win[@player1_choice] == @player2_choice
    return "Player 2 wins with #{@player2_choice}!"
  end

end
