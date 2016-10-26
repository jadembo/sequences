class GuessesController < ApplicationController
  def index

    render("all_guesses.html.erb")
  end

  def answer

    render("show_answer.html.erb")
  end


end
