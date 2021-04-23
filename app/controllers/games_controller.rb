class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10).join
    @letters
  end

  def score
    # The word is valid according to the grid, but is not a valid English word
    if params[:word]
      @score = "#{params[:word]} is not and English word"
    # The word is valid according to the grid and is an English word
    elsif params[:word]
      @score = "Congrats #{params[:word]} is a valid English word"
    # The word can’t be built out of the original grid
    else params[:word].exclude?(params[:letters])
      @score = "#{params[:word]} can’t be built out of #{params[:letters]}"
    end
  end
end
