class EraseController < ApplicationController
    def index
       Talk.all 
    end
    
    def create
    
       talk = Talk.where(ask: params[:ask]).sample
    
       unless talk.nil?
       
       Talk.where(ask: @erase).each do |p|
          erase = p.answer
       end
       
       redirect_to '/erase2'
    
       else
        
       redirect_to '/erase'
       
      end
    
    
    end
end
