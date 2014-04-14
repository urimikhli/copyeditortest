class CopyeditorTestsController < ApplicationController
  before_action :set_copyeditor_test, only: [:show, :edit, :update, :destroy]

  # GET /copyeditor_tests
  # GET /copyeditor_tests.json
  def index
    @copyeditor_tests = CopyeditorTest.all
  end

  # GET /copyeditor_tests/1
  # GET /copyeditor_tests/1.json
  def show
  end

  # GET /copyeditor_tests/new
  def new
    @copyeditor_test = CopyeditorTest.new
  end

  # GET /copyeditor_tests/1/edit
  def edit
  end

  # POST /copyeditor_tests
  # POST /copyeditor_tests.json
  def create
    @copyeditor_test = CopyeditorTest.new(copyeditor_test_params)

    respond_to do |format|
      if @copyeditor_test.save
        format.html { redirect_to @copyeditor_test, notice: 'Copyeditor test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @copyeditor_test }
      else
        format.html { render action: 'new' }
        format.json { render json: @copyeditor_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copyeditor_tests/1
  # PATCH/PUT /copyeditor_tests/1.json
  def update
    respond_to do |format|
      if @copyeditor_test.update(copyeditor_test_params)
        format.html { redirect_to @copyeditor_test, notice: 'Copyeditor test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @copyeditor_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copyeditor_tests/1
  # DELETE /copyeditor_tests/1.json
  def destroy
    @copyeditor_test.destroy
    respond_to do |format|
      format.html { redirect_to copyeditor_tests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copyeditor_test
      @copyeditor_test = CopyeditorTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copyeditor_test_params
      params.require(:copyeditor_test).permit(:firstname, :lastname, :user_id, :email, :passage_id, :attempt)
    end
end
