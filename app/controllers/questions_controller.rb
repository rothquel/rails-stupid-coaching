class QuestionsController < ApplicationController
  def ask
  end

  def answer
    response = params[:question]
    @answer = (
    if response == 'I am going to work'
      'Great!'
    elsif response.ends_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  )
  end
end
