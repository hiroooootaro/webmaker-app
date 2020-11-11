class Template < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  has_many :orders
  belongs_to :user
  has_one_attached :template_image
  
  validates :category_id, numericality: { other_than: 1 } 
end
