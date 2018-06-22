class Task < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :users, through: :assignments
  belongs_to :project
  enum status: { brand_new: 0, in_progress: 1, done: 2 }
  validates :title, presence: true, length: { minimum: 4, maximum: 25 }
  validates :description, presence: true, length: { minimum: 5, maximum: 50 }
end
