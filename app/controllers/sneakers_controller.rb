class SneakersController < ApplicationController
  before_action :set_sneaker, only: %i[ show edit update destroy ]

  def latest
    @sneakers = Sneaker.where(released:true)
  end

  # GET /sneakers or /sneakers.json
  def index
    @sneakers = Sneaker.where(released:false)
    @sneakersdrop = Sneaker.where(released:true)
    @name = params[:name]
  end

  # GET /sneakers/1 or /sneakers/1.json
  def show
  end

  # GET /sneakers/new
  def new
    @sneaker = Sneaker.new
  end

  # GET /sneakers/1/edit
  def edit
  end

  # POST /sneakers or /sneakers.json
  def create
    @sneaker = Sneaker.new(sneaker_params)
    @post.user_id = current_user.id
    respond_to do |format|
      if @sneaker.save
        format.html { redirect_to sneaker_url(@sneaker), notice: "Sneaker was successfully created." }
        format.json { render :show, status: :created, location: @sneaker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sneaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sneakers/1 or /sneakers/1.json
  def update
    respond_to do |format|
      if @sneaker.update(sneaker_params)
        format.html { redirect_to sneaker_url(@sneaker), notice: "Sneaker was successfully updated." }
        format.json { render :show, status: :ok, location: @sneaker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sneaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sneakers/1 or /sneakers/1.json
  def destroy
    @sneaker.destroy

    respond_to do |format|
      format.html { redirect_to sneakers_url, notice: "Sneaker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sneaker
      @sneaker = Sneaker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sneaker_params
      params.require(:sneaker).permit(:released, :image, :logo, :tilte, :release_date, :price, :user_id)
    end
  end
