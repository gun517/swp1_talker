class LearnController < ApplicationController
  def index
  end
  
  def create
    
    learn_ask = params[:ask]
    learn_answer = params[:answer]
    
    Talk.create(ask: learn_ask, answer: learn_answer)
    redirect_to '/learn'
    
  end

end
