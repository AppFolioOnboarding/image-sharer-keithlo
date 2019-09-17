class ImageUrl < ApplicationRecord
  include ActiveModel::Validations
  validates :url, presence: true
  validates :url, url: true
  validates :url, format: {with: /\.(png|jpg|jpeg)\Z/i}
  validates :url, uniqueness: { scope: [:url] }
end
