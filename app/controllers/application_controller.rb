class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def new
  
  end
  
  def create
    @idea = Idea.new
    @idea.name = params['name']
    @idea.idea = params['idea']
    @idea.save
    
    redirect_to "/ideas/#{ @idea.id }"
  end
  
  def show
    @idea = Idea.find_by(id: params['id'])
  end
  
  def index
    @ideas = Idea.all
  end
  
  def edit
    @idea = Idea.find_by(id: params['id'])
  end
  
  def update
    @idea = Idea.find_by(id: params['id'])
    @idea.name = params['name']
    @idea.idea = params['idea']
    @idea.save
    
    redirect_to "/ideas/#{ @idea.id }"
  end
  
  def destroy
    @idea = Idea.find_by(id: params['id'])
    @name = @idea.name
    @idea.destroy
  
  end
end
