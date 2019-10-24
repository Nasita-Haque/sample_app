class TabemonosController < ApplicationController
  before_action :set_tabemono, only: [:show, :edit, :update, :destroy]

  # GET /tabemonos
  # GET /tabemonos.json
  def index
    @tabemonos = Tabemono.all
  end

  # GET /tabemonos/1
  # GET /tabemonos/1.json
  def show
  end

  # GET /tabemonos/new
  def new
    @tabemono = Tabemono.new
  end

  # GET /tabemonos/1/edit
  def edit
  end

  # POST /tabemonos
  # POST /tabemonos.json
  def create
    @tabemono = Tabemono.new(tabemono_params)

    respond_to do |format|
      if @tabemono.save
        format.html { redirect_to @tabemono, notice: 'Tabemono was successfully created.' }
        format.json { render :show, status: :created, location: @tabemono }
      else
        format.html { render :new }
        format.json { render json: @tabemono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tabemonos/1
  # PATCH/PUT /tabemonos/1.json
  def update
    respond_to do |format|
      if @tabemono.update(tabemono_params)
        format.html { redirect_to @tabemono, notice: 'Tabemono was successfully updated.' }
        format.json { render :show, status: :ok, location: @tabemono }
      else
        format.html { render :edit }
        format.json { render json: @tabemono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tabemonos/1
  # DELETE /tabemonos/1.json
  def destroy
    @tabemono.destroy
    respond_to do |format|
      format.html { redirect_to tabemonos_url, notice: 'Tabemono was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tabemono
      @tabemono = Tabemono.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tabemono_params
      params.require(:tabemono).permit(:name, :rank)
    end
end
