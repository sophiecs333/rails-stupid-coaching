class QuestionsController < ApplicationController

  def ask
    # we need nothing it's just for the page to be rendered
  end

  def answer
    # params = ask
    @ask = params[:question]
    if @ask === "I am going to work"
      @answer = "Great!"
    elsif @ask.include?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# when you do something in the controller and want to display it in the view
# you save it in an instance variale "@"
