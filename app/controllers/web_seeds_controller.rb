class WebSeedsController < ApplicationController
  respond_to :json

  def index
    respond_with WebSeed.all
  end

  def show
    respond_with WebSeed.find(params[:id])
  end 

  def create
    respond_with WebSeed.create(params[:web_seed])
  end 

  def update
    respond_with WebSeed.update(params[:id], params[:web_seed])
  end 

  def destroy
    respond_with WebSeed.destroy(params[:id])
  end 

end
