class AltersController < ApplicationController
  # GET /alters
  # GET /alters.json
  def index
    @alters = Alter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alters }
    end
  end

  # GET /alters/1
  # GET /alters/1.json
  def show
    @alter = Alter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @alter }
    end
  end

  # GET /alters/new
  # GET /alters/new.json
  def new
    @alter = Alter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @alter }
    end
  end

  # GET /alters/1/edit
  def edit
    @alter = Alter.find(params[:id])
  end

  # POST /alters
  # POST /alters.json
  def create
    @alter = Alter.new(params[:alter])

    respond_to do |format|
      if @alter.save
        format.html { redirect_to @alter, notice: 'Alter was successfully created.' }
        format.json { render json: @alter, status: :created, location: @alter }
      else
        format.html { render action: "new" }
        format.json { render json: @alter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /alters/1
  # PUT /alters/1.json
  def update
    @alter = Alter.find(params[:id])

    respond_to do |format|
      if @alter.update_attributes(params[:alter])
        format.html { redirect_to @alter, notice: 'Alter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @alter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alters/1
  # DELETE /alters/1.json
  def destroy
    @alter = Alter.find(params[:id])
    @alter.destroy

    respond_to do |format|
      format.html { redirect_to alters_url }
      format.json { head :no_content }
    end
  end
end
