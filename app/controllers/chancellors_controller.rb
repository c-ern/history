class ChancellorsController < ApplicationController
  # GET /chancellors
  # GET /chancellors.json
  def index
    @chancellors = Chancellor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chancellors }
    end
  end

  # GET /chancellors/1
  # GET /chancellors/1.json
  def show
    @chancellor = Chancellor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chancellor }
    end
  end

  # GET /chancellors/new
  # GET /chancellors/new.json
  def new
    @chancellor = Chancellor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chancellor }
    end
  end

  # GET /chancellors/1/edit
  def edit
    @chancellor = Chancellor.find(params[:id])
  end

  # POST /chancellors
  # POST /chancellors.json
  def create
    @chancellor = Chancellor.new(params[:chancellor])

    respond_to do |format|
      if @chancellor.save
        format.html { redirect_to @chancellor, notice: 'Chancellor was successfully created.' }
        format.json { render json: @chancellor, status: :created, location: @chancellor }
      else
        format.html { render action: "new" }
        format.json { render json: @chancellor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chancellors/1
  # PUT /chancellors/1.json
  def update
    @chancellor = Chancellor.find(params[:id])

    respond_to do |format|
      if @chancellor.update_attributes(params[:chancellor])
        format.html { redirect_to @chancellor, notice: 'Chancellor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chancellor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chancellors/1
  # DELETE /chancellors/1.json
  def destroy
    @chancellor = Chancellor.find(params[:id])
    @chancellor.destroy

    respond_to do |format|
      format.html { redirect_to chancellors_url }
      format.json { head :no_content }
    end
  end
end
