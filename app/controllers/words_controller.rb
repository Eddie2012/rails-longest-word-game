require 'open-uri'
require 'json'
require 'wordgame'

class WordsController < ApplicationController

  def game
    @grid = generate_grid(13)

  end

  def score
    @query = params[:query]
    @start_time = params[:start_time].to_time
    @end_time = Time.now
    @grid = params[:grid].split(//)
    @result = run_game(@query, @grid, @start_time, @end_time)
  end
end

private

