class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :non_matched_coach, only: [:index, :create]

  def index
    @order_form = OrderForm.new
  end

  def create
    @order_form = OrderForm.new(order_params)
    #binding.pry
    if @order_form.valid?
      match
      @order_form.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order_form).permit(:rank_id, {:character => []}, :play_time, {:play_device => []}, {:communication_tool => []}, :goal).merge(user_id: current_user.id, coach_id: params[:coach_id], token: params[:token])
  end

  def match
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @coach.price,
      card: order_params[:token],
      currency: 'jpy'
    )
  end

  def non_matched_coach
    @coach = Coach.find(params[:coach_id])
    if current_user.id == @coach.user_id
      redirect_to root_path
    end
  end

end
