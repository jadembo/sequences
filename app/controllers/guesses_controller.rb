class GuessesController < ApplicationController
  def index
    g=Guess.new
    g.first_num = params["first_number"]
    g.second_num = params["second_number"]
    g.third_num = params["third_number"]
    g.save
    @list = Guess.all

    render("all_guesses.html.erb")
  end

  def answer
    # params = {"rule" => " "}

    @user_answer = params["rule"]

    render("show_answer.html.erb")
  end


end
