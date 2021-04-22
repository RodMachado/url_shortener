class UrlCatalogsController < ApplicationController
  before_action :set_url_catalog, only: %i[ show edit update destroy ]

  # GET /url_catalogs or /url_catalogs.json
  def index
    @url_catalogs = UrlCatalog.all
  end

  # GET /url_catalogs/1 or /url_catalogs/1.json
  def show
  end

  # GET /url_catalogs/new
  def new
    @url_catalog = UrlCatalog.new
  end

  # GET /url_catalogs/1/edit
  def edit
  end

  # POST /url_catalogs or /url_catalogs.json
  def create
    @url_catalog = UrlHashGenerator.new(url_catalog_params).generate

    respond_to do |format|
      if @url_catalog.save
        format.html { redirect_to @url_catalog, notice: "Url catalog was successfully created." }
        format.json { render :show, status: :created, location: @url_catalog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @url_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /url_catalogs/1 or /url_catalogs/1.json
  def update
    respond_to do |format|
      if @url_catalog.update(url_catalog_params)
        format.html { redirect_to @url_catalog, notice: "Url catalog was successfully updated." }
        format.json { render :show, status: :ok, location: @url_catalog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @url_catalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /url_catalogs/1 or /url_catalogs/1.json
  def destroy
    @url_catalog.destroy
    respond_to do |format|
      format.html { redirect_to url_catalogs_url, notice: "Url catalog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url_catalog
      @url_catalog = UrlCatalog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def url_catalog_params
      params.require(:url_catalog).permit(:url)
    end
end
