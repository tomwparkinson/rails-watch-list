class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, :list_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: "Movie has already been added to this list" }
  validates :comment, length: { minimum: 6 }
end
