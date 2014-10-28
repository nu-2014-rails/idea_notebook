class IdeasController < ApplicationController
  def show
    @idea = Idea.find_by_id(params["id"])
  end
  
  def new
  end
  
  def create
    i = Idea.new
    i.desc = params["desc"]
    i.save
    
    redirect_to "/ideas/#{ i.id }"
  end
  
  def edit
    @idea = Idea.find_by_id(params["id"])
  end
  
  def update
    i = Idea.find_by_id(params["id"])
    i.desc = params["desc"]
    i.save
    
    redirect_to "/ideas/#{ i.id }"   
  end
  
  def destroy
    i = Idea.find_by_id(params["id"])
    i.destroy
    
    redirect_to "/new_idea"
  end
  
end