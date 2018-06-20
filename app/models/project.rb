class Project < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 3, maximum: 15 }
  validates :summary, presence: true, length: { minimum: 10, maximum: 50 }
  validates :start_date, presence: true,
                         date: { after: proc { Time.now - 1.year },
                                 before: proc { Time.now + 1.year } }
  validates :end_date, presence: true,
                       date: { after: proc { Time.now - 1.month },
                               before: proc { Time.now + 1.year } }
end
