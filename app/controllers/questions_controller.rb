class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # I am going to work = Great!
    # Anything with ? = Silly question, get dressed and got to work!
    # Others = I don't care, get dressed and go to work

    if params[:question].ends_with?('?')
      @answer = 'Silly question, get dressed and got to work!'
    elsif params[:question] =~ /i am going to work/i
      @answer = 'Great!'
    else
      @answer = 'I dont care, get dressed and go to work'
    end
  end

end
