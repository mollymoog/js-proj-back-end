class FreeTrialsController < ApplicationController
  before_action :set_free_trial, only: [:show, :update, :destroy]

  # GET /free_trials
  def index
    if params[:family_id]
      @family = Family.find(params[:family_id])
      @free_trials = @family.free_trials
    else
      @free_trials = FreeTrial.all
    end

    render json: @free_trials
  end

  # GET /free_trials/1
  def show
    render json: @free_trial
  end

  # POST /free_trials
  def create
    @free_trial = FreeTrial.new(free_trial_params)

    if @free_trial.save
      render json: @free_trial, status: :created, location: @free_trial
    else
      render json: @free_trial.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /free_trials/1
  def update
    if @free_trial.update(free_trial_params)
      render json: @free_trial
    else
      render json: @free_trial.errors, status: :unprocessable_entity
    end
  end

  # DELETE /free_trials/1
  def destroy
    @free_trial.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_free_trial
      @free_trial = FreeTrial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def free_trial_params
      params.permit(:service, :link, :username, :password, :expiration, :active, :family_id)
    end
end
