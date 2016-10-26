class GuessesController < ApplicationController
  def index
    #params = {"first_number"=> " ", "second_number" =>"", "third_number"=> ""}

    @first_number = params["first_number"]
    @second_number = params["second_number"]
    @third_number = params["third_number"]

    if @first_number < @second_number && @second_number < @third_number
      @test = "yes!"
    else
      @test = "no."
    end

    render("all_guesses.html.erb")
  end

  def answer
    # params = {"rule" => " "}

    @user_answer = params["rule"]

    render("show_answer.html.erb")
  end


end
