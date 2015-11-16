class AnnouncesController < ApplicationController
  before_action :set_announce, only: [:show, :edit, :update, :destroy]

  # GET /announces
  # GET /announces.json
  def index
    @announces = Announce.all
  end

  # GET /announces/1
  # GET /announces/1.json
  def show
  end

  # GET /announces/new
  def new
    @announce = Announce.new
  end

  # GET /announces/1/edit
  def edit
  end

  # POST /announces
  # POST /announces.json
  def create
    @announce = Announce.new(announce_params)

    respond_to do |format|
      if @announce.save
        format.html { redirect_to @announce, notice: 'Announce was successfully created.' }
        format.json { render :show, status: :created, location: @announce }
      else
        format.html { render :new }
        format.json { render json: @announce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /announces/1
  # PATCH/PUT /announces/1.json
  def update
    respond_to do |format|
      if @announce.update(announce_params)
        format.html { redirect_to @announce, notice: 'Announce was successfully updated.' }
        format.json { render :show, status: :ok, location: @announce }
      else
        format.html { render :edit }
        format.json { render json: @announce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announces/1
  # DELETE /announces/1.json
  def destroy
    @announce.destroy
    respond_to do |format|
      format.html { redirect_to announces_url, notice: 'Announce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announce
      @announce = Announce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def announce_params
      params.require(:announce).permit(:title, :description, :price)
    end
end
