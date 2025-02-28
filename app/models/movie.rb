class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks, dependent: :destroy
  validates :title, :overview, uniqueness: true
end
