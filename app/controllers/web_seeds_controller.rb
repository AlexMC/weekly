class WebSeedsController < ApplicationController
  # GET /web_seeds
  # GET /web_seeds.json
  def index
    @web_seeds = WebSeed.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @web_seeds }
    end
  end

  # GET /web_seeds/1
  # GET /web_seeds/1.json
  def show
    @web_seed = WebSeed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @web_seed }
    end
  end

  # GET /web_seeds/new
  # GET /web_seeds/new.json
  def new
    @web_seed = WebSeed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @web_seed }
    end
  end

  # GET /web_seeds/1/edit
  def edit
    @web_seed = WebSeed.find(params[:id])
  end

  # POST /web_seeds
  # POST /web_seeds.json
  def create
    @web_seed = WebSeed.new(params[:web_seed])

    respond_to do |format|
      if @web_seed.save
        format.html { redirect_to @web_seed, notice: 'Web seed was successfully created.' }
        format.json { render json: @web_seed, status: :created, location: @web_seed }
      else
        format.html { render action: "new" }
        format.json { render json: @web_seed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /web_seeds/1
  # PUT /web_seeds/1.json
  def update
    @web_seed = WebSeed.find(params[:id])

    respond_to do |format|
      if @web_seed.update_attributes(params[:web_seed])
        format.html { redirect_to @web_seed, notice: 'Web seed was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @web_seed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_seeds/1
  # DELETE /web_seeds/1.json
  def destroy
    @web_seed = WebSeed.find(params[:id])
    @web_seed.destroy

    respond_to do |format|
      format.html { redirect_to web_seeds_url }
      format.json { head :ok }
    end
  end
end
