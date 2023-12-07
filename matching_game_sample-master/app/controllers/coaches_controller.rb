class CoachesController < ApplicationController
  before_action :set_coach, only: [:show, :edit, :update, :destroy]


  def index
    @coaches = Coach.order("created_at DESC")
  end

  def new
    @coach = Coach.new
  end

  def create
    @coach = Coach.new(coach_params)
    if @coach.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    unless @coach.user_id == current_user.id
      redirect_to root_path
    end
  end

  def update
    if @coach.update(coach_params)
      redirect_to coach_path(coach_params)
    else
      render :edit
    end
  end

  def destroy
    if @coach.user_id == current_user.id
      @coach.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def coach_params
    params.require(:coach).permit(:rank_id, :kill_rate, {:character => []}, :play_time, {:play_device => []}, {:communication_tool => []}, :price, :times_to_teach, :rank_limit_id, :appeal_point).merge(user_id: current_user.id)
  end

  def set_coach
    @coach = Coach.find(params[:id])
  end
end
