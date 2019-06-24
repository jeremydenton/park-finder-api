class TortoisesController < OpenReadController
  before_action :set_tortoise, only: [:update, :destroy]

  # GET /tortoises
  def index
    @tortoises = Tortoise.all

    render json: @tortoises
  end

  # GET /tortoises/1
  def show
    render json: Tortoise.find(params[:id])
  end

  # POST /tortoises
  def create
    @tortoise = current_user.tortoises.build(tortoise_params)

    if @tortoise.save
      render json: @tortoise, status: :created, location: @tortoise
    else
      render json: @tortoise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tortoises/1
  def update
    if @tortoise.update(tortoise_params)
      render json: @tortoise
    else
      render json: @tortoise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tortoises/1
  def destroy
    @tortoise.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tortoise
      @tortoise = current_user.tortoises.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tortoise_params
      params.require(:tortoise).permit(:color, :age)
    end
end
