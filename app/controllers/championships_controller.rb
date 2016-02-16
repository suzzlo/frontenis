class ChampionshipsController < ApplicationController
  # GET /championships
  # GET /championships.json
  def index
    @championships = Championship.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @championships }
    end
  end

  # GET /championships/1
  # GET /championships/1.json
  def show
    @championship = Championship.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @championship }
    end
  end

  # GET /championships/new
  # GET /championships/new.json
  def new
    @championship = Championship.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @championship }
    end
  end

  # GET /championships/1/edit
  def edit
    @championship = Championship.find(params[:id])
  end

  # POST /championships
  # POST /championships.json
  def create
    @championship = Championship.new(championship_params)

    respond_to do |format|
      if @championship.save
        format.html { redirect_to @championship, notice: 'Championship was successfully created.' }
        format.json { render json: @championship, status: :created, location: @championship }
      else
        format.html { render action: "new" }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /championships/1
  # PUT /championships/1.json
  def update
    @championship = Championship.find(params[:id])

    respond_to do |format|
      if @championship.update_attributes(championship_params)
        format.html { redirect_to @championship, notice: 'Championship was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /championships/1
  # DELETE /championships/1.json
  def destroy
    @championship = Championship.find(params[:id])
    @championship.destroy

    respond_to do |format|
      format.html { redirect_to championships_url }
      format.json { head :ok }
    end
  end


  private

  def championship_params
    params.require(:championship).permit(:name, :start_date,:finish_date, :created_at, :updated_at)
  end

end
