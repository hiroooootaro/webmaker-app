class Order < ApplicationRecord
  belongs_to :template
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  validates :order_message, presence: true
  validates :category_id, presence: true
end
