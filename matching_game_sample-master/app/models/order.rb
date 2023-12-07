class Order < ApplicationRecord
  belongs_to :user
  belongs_to :coach
  has_one :payment
end
