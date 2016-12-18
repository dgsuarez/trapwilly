class TextImagesController < ApplicationController
  before_action :set_text_image, only: [:show, :edit, :update, :destroy]

  # GET /text_images
  # GET /text_images.json
  def index
    @text_images = TextImage.all
  end

  # GET /text_images/1
  # GET /text_images/1.json
  def show
  end

  # GET /text_images/new
  def new
    @text_image = TextImage.new
  end

  # GET /text_images/1/edit
  def edit
  end

  # POST /text_images
  # POST /text_images.json
  def create
    @text_image = TextImage.new(text_image_params)

    respond_to do |format|
      if @text_image.save
        format.html { redirect_to @text_image, notice: 'Text image was successfully created.' }
        format.json { render :show, status: :created, location: @text_image }
      else
        format.html { render :new }
        format.json { render json: @text_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_images/1
  # PATCH/PUT /text_images/1.json
  def update
    respond_to do |format|
      if @text_image.update(text_image_params)
        format.html { redirect_to @text_image, notice: 'Text image was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_image }
      else
        format.html { render :edit }
        format.json { render json: @text_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_images/1
  # DELETE /text_images/1.json
  def destroy
    @text_image.destroy
    respond_to do |format|
      format.html { redirect_to text_images_url, notice: 'Text image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_image
      @text_image = TextImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_image_params
      params.require(:text_image).permit(:image, :content)
    end
end
