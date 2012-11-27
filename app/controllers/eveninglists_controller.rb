class EveninglistsController < ApplicationController
  # GET /eveninglists
  # GET /eveninglists.json
  def index
    @eveninglists = Eveninglist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eveninglists }
    end
  end

  # GET /eveninglists/1
  # GET /eveninglists/1.json
  def show
    @eveninglist = Eveninglist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eveninglist }
    end
  end

  # GET /eveninglists/new
  # GET /eveninglists/new.json
  def new
    @eveninglist = Eveninglist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eveninglist }
    end
  end

  # GET /eveninglists/1/edit
  def edit
    @eveninglist = Eveninglist.find(params[:id])
  end

  # POST /eveninglists
  # POST /eveninglists.json
  def create
    @eveninglist = Eveninglist.new(params[:eveninglist])

    respond_to do |format|
      if @eveninglist.save
        format.html { redirect_to @eveninglist, notice: 'Eveninglist was successfully created.' }
        format.json { render json: @eveninglist, status: :created, location: @eveninglist }
      else
        format.html { render action: "new" }
        format.json { render json: @eveninglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eveninglists/1
  # PUT /eveninglists/1.json
  def update
    @eveninglist = Eveninglist.find(params[:id])

    respond_to do |format|
      if @eveninglist.update_attributes(params[:eveninglist])
        format.html { redirect_to @eveninglist, notice: 'Eveninglist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eveninglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eveninglists/1
  # DELETE /eveninglists/1.json
  def destroy
    @eveninglist = Eveninglist.find(params[:id])
    @eveninglist.destroy

    respond_to do |format|
      format.html { redirect_to eveninglists_url }
      format.json { head :no_content }
    end
  end
end
