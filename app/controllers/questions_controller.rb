class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @question = "..." if @question.blank?
    @answer = coach(@question)
  end

  private
  def coach(question)
    case question
    when "I am going to work"
      "Great!"
    when /\?$/
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

end
