class Advertisement < ApplicationRecord
  validates :title, presence: true
  validates :lien_externe, presence: true
  validates :tag, presence: true
end
