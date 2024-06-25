class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = "I don't care, get dressed and go to work!"
    @question = params[:question]

    if @question.downcase == "i am going to work"
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer
    end
  end
end
