class SanganosController < ApplicationController
  # GET /sanganos
  # GET /sanganos.json
  def index
    @sanganos = Sangano.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sanganos }
    end
  end

  # GET /sanganos/1
  # GET /sanganos/1.json
  def show
    @sangano = Sangano.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sangano }
    end
  end

  # GET /sanganos/new
  # GET /sanganos/new.json
  def new
    @sangano = Sangano.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sangano }
    end
  end

  # GET /sanganos/1/edit
  def edit
    @sangano = Sangano.find(params[:id])
  end

  # POST /sanganos
  # POST /sanganos.json
  def create
    @sangano = Sangano.new(params[:sangano])

    respond_to do |format|
      if @sangano.save
        format.html { redirect_to @sangano, notice: 'Sangano was successfully created.' }
        format.json { render json: @sangano, status: :created, location: @sangano }
      else
        format.html { render action: "new" }
        format.json { render json: @sangano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sanganos/1
  # PUT /sanganos/1.json
  def update
    @sangano = Sangano.find(params[:id])

    respond_to do |format|
      if @sangano.update_attributes(params[:sangano])
        format.html { redirect_to @sangano, notice: 'Sangano was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sangano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sanganos/1
  # DELETE /sanganos/1.json
  def destroy
    @sangano = Sangano.find(params[:id])
    @sangano.destroy

    respond_to do |format|
      format.html { redirect_to sanganos_url }
      format.json { head :no_content }
    end
  end
end
