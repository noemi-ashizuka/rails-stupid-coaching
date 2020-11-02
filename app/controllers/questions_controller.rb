class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # use params
    @question = params[:question]
    
    @answer = if @question.downcase == "i am going to work"
                "Great!"
              elsif @question.end_with?("?")
                "Silly question, get dressed and go to work!"
              elsif @question.blank?
                "I can't hear you..."
              else
                "I don't care, get dressed and go to work!"
              end
    end
end
