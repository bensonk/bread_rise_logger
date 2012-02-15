class RisesController < ApplicationController
  # GET /rises
  # GET /rises.json
  def index
    @rises = Rise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rises }
    end
  end

  # GET /rises/1
  # GET /rises/1.json
  def show
    @rise = Rise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rise }
    end
  end

  # GET /rises/new
  # GET /rises/new.json
  def new
    @rise = Rise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rise }
    end
  end

  # GET /rises/1/edit
  def edit
    @rise = Rise.find(params[:id])
  end

  # POST /rises
  # POST /rises.json
  def create
    @rise = Rise.new(params[:rise])

    respond_to do |format|
      if @rise.save
        format.html { redirect_to @rise, notice: 'Rise was successfully created.' }
        format.json { render json: @rise, status: :created, location: @rise }
      else
        format.html { render action: "new" }
        format.json { render json: @rise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rises/1
  # PUT /rises/1.json
  def update
    @rise = Rise.find(params[:id])

    respond_to do |format|
      if @rise.update_attributes(params[:rise])
        format.html { redirect_to @rise, notice: 'Rise was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rises/1
  # DELETE /rises/1.json
  def destroy
    @rise = Rise.find(params[:id])
    @rise.destroy

    respond_to do |format|
      format.html { redirect_to rises_url }
      format.json { head :ok }
    end
  end
end
