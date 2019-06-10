class ParksController < OpenReadController
  before_action :set_park, only: [:update, :destroy]

  # GET /parks
  def index
    @parks = Park.all

    render json: @parks
  end

  # GET /parks/1
  def show
    render json: Park.find(params[:id])
  end

  # POST /parks
  def create
    @park = current_user.parks.build(park_params)

    if @park.save
      render json: @park, status: :created, location: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parks/1
  def update
    if @park.update(park_params)
      render json: @park
    else
      render json: @park.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parks/1
  def destroy
    @park.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park
      @park = current_user.parks.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def park_params
      params.require(:park).permit(:name, :address, :bathroom, :user_id)
    end
end
