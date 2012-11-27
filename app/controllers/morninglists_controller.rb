class MorninglistsController < ApplicationController
  # GET /morninglists
  # GET /morninglists.json
  def index
    @morninglists = Morninglist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @morninglists }
    end
  end

  # GET /morninglists/1
  # GET /morninglists/1.json
  def show
    @morninglist = Morninglist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @morninglist }
    end
  end

  # GET /morninglists/new
  # GET /morninglists/new.json
  def new
    @morninglist = Morninglist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @morninglist }
    end
  end

  # GET /morninglists/1/edit
  def edit
    @morninglist = Morninglist.find(params[:id])
  end

  # POST /morninglists
  # POST /morninglists.json
  def create
    @morninglist = Morninglist.new(params[:morninglist])

    respond_to do |format|
      if @morninglist.save
        format.html { redirect_to @morninglist, notice: 'Morninglist was successfully created.' }
        format.json { render json: @morninglist, status: :created, location: @morninglist }
      else
        format.html { render action: "new" }
        format.json { render json: @morninglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /morninglists/1
  # PUT /morninglists/1.json
  def update
    @morninglist = Morninglist.find(params[:id])

    respond_to do |format|
      if @morninglist.update_attributes(params[:morninglist])
        format.html { redirect_to @morninglist, notice: 'Morninglist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @morninglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /morninglists/1
  # DELETE /morninglists/1.json
  def destroy
    @morninglist = Morninglist.find(params[:id])
    @morninglist.destroy

    respond_to do |format|
      format.html { redirect_to morninglists_url }
      format.json { head :no_content }
    end
  end
end
