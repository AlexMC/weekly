class WebSeedsController < ApplicationController
  respond_to :json

  def index
    respond_with WebSeed.all
  end

  def show
    respond_with WebSeed.find(params[:id])
  end 

  def create
    new_web_seed = WebSeed.create(params[:web_seed])
    render json: new_web_seed.to_hash
  end 

  def update
    respond_with WebSeed.update(params[:id], params[:web_seed])
  end 

  def destroy
    render json: WebSeed[params[:id]].delete
  end 

  def upvote
    render json: WebSeed[params[:id]].incr(1)
  end

end
