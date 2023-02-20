class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = if params[:question].downcase.include?('?')
                'Silly question, get dressed and go to work!'
              elsif params[:question].downcase.include?('i am going to work')
                'Great!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end
end
