class Order < ApplicationRecord
  belongs_to :template

  validates :order_message, presence: true
  validates :category_id, presence: true
end
