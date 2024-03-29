class WebSeedsController < ApplicationController
  respond_to :json

  def index
    render json: sorted_seeds
  end

  def show
    respond_with WebSeed[params[:id]]
  end 

  def create
    new_web_seed = WebSeed.create(params[:web_seed])
    render json: new_web_seed.to_hash
  end 

  def update
    respond_with WebSeed.update(params[:id], params[:web_seed])
  end 

  def destroy
    WebSeed[params[:id]].delete
    render json: sorted_seeds
  end 

  def upvote
    WebSeed[params[:id]].incr(:votes)
    render json: sorted_seeds
  end

  private
  def sorted_seeds
    WebSeed.all.sort_by(:votes, :order => "desc")
  end

end
