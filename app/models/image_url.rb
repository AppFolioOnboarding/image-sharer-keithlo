class ImageUrl < ApplicationRecord
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  # acts_as_taggable_on :url
  include ActiveModel::Validations
  validates :url, presence: true
  validates :url, url: true
  validates :url, format: {with: /\.(png|jpg|jpeg)\Z/i}
  # validates :url, uniqueness: { scope: [:url] }
end
