class OrderForm
  include ActiveModel::Model
  attr_accessor :user_id, :coach_id, :rank_id, :character, :play_style, :play_time, :play_device, :communication_tool, :goal, :token

  with_options presence: true do
    validates :user_id
    validates :coach_id

    validates :rank_id
    validates :character
    validates :play_time
    validates :play_device
    validates :communication_tool
    validates :goal

    validates :token
  end

  def save
    order = Order.create(user_id: user_id, coach_id: coach_id)
    Payment.create(coach_id: coach_id, order_id: order.id, rank_id: rank_id, character: character, play_style: play_style, play_time: play_time, play_device: play_device, communication_tool: communication_tool, goal: goal)
  end
end