class ImageUrl < ApplicationRecord
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  include ActiveModel::Validations
  validates :url, presence: true
  validates :url, url: true
end
