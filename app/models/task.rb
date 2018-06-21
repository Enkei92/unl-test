class Task < ApplicationRecord
  has_many :users
  belongs_to :project
  enum status: { brand_new: 0, in_progress: 1, done: 2 }
end
