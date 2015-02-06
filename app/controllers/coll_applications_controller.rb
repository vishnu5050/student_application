class CollApplicationsController < ApplicationController
  before_action :set_coll_application, only: [:show, :edit, :update, :destroy]

  # GET /coll_applications
  # GET /coll_applications.json
  def index
    @coll_applications = CollApplication.all
  end

  # GET /coll_applications/1
  # GET /coll_applications/1.json
  def show
  end

  # GET /coll_applications/new
  def new
    @coll_application = CollApplication.new

  end

  # GET /coll_applications/1/edit
  def edit
  end

  # POST /coll_applications
  # POST /coll_applications.json
  def create
    @coll_application = CollApplication.new(coll_application_params)

    respond_to do |format|
      if @coll_application.save
        format.html { redirect_to action: "index", notice: 'Application was successfully sent.' }
        format.json { render :index, status: :created, location: coll_application_path }
      else
        format.html { render :new }
        format.json { render json: @coll_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coll_applications/1
  # PATCH/PUT /coll_applications/1.json
  def update
    respond_to do |format|
      if @coll_application.update(coll_application_params)
        format.html { redirect_to @coll_application, notice: 'Coll application was successfully updated.' }
        format.json { render :show, status: :ok, location: @coll_application }
      else
        format.html { render :edit }
        format.json { render json: @coll_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coll_applications/1
  # DELETE /coll_applications/1.json
  def destroy
    @coll_application.destroy
    respond_to do |format|
      format.html { redirect_to coll_applications_url, notice: 'Coll application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coll_application
      @coll_application = CollApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coll_application_params
      params.require(:coll_application).permit(:student_id, :college_id)
    end
end
