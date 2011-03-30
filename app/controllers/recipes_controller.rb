class RecipesController < ApplicationController
  
  before_filter :login_required, :only => [ :new, :create ]
  
  def index
    @recipes = Recipe.all
    respond_to do |format|
      format.html # new.html.erb
      format.rss
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    ingredient = @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.user_id = current_user
    if @recipe.save
      redirect_to @recipe, :notice => "Successfully created recipe."
    else
      render :action => 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
      redirect_to @recipe, :notice  => "Successfully updated recipe."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_url, :notice => "Successfully destroyed recipe."
  end
  
  ### AJAX
  
 
  
end
