class Posts1sController < ApplicationController
  before_action :set_posts1, only: %i[ show edit update destroy ]

  # GET /posts1s or /posts1s.json
  def index
    @posts1s = Posts1.all
  end

  # GET /posts1s/1 or /posts1s/1.json
  def show
  end

  # GET /posts1s/new
  def new
    @posts1 = Posts1.new
  end

  # GET /posts1s/1/edit
  def edit
  end

  # POST /posts1s or /posts1s.json
  def create
    @posts1 = Posts1.new(posts1_params)

    respond_to do |format|
      if @posts1.save
        format.html { redirect_to posts1_url(@posts1), notice: "Posts1 was successfully created." }
        format.json { render :show, status: :created, location: @posts1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @posts1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts1s/1 or /posts1s/1.json
  def update
    respond_to do |format|
      if @posts1.update(posts1_params)
        format.html { redirect_to posts1_url(@posts1), notice: "Posts1 was successfully updated." }
        format.json { render :show, status: :ok, location: @posts1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @posts1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts1s/1 or /posts1s/1.json
  def destroy
    @posts1.destroy

    respond_to do |format|
      format.html { redirect_to posts1s_url, notice: "Posts1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posts1
      @posts1 = Posts1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def posts1_params
      params.require(:posts1).permit(:body, :user_id)
    end
end
