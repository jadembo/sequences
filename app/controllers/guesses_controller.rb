class GuessesController < ApplicationController
  def startup
    @list = Guess.all

    render("all_guesses.html.erb")
  end

  def clear
    @list = Guess.all

    @list.each do |guess|
      guess.destroy
    end

    @list = Guess.all

    render("all_guesses.html.erb")
  end

  def index

      g=Guess.new
      g.first_num = params["first_number"].to_i
      g.second_num = params["second_number"].to_i
      g.third_num = params["third_number"].to_i
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
