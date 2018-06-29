class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15 }
  validates :summary, presence: true, length: { minimum: 10, maximum: 50 }
  validates :start_date, presence: true,
                         date: { after: proc { Time.now - 1.year },
                                 before: proc { Time.now + 1.year } }
  validates :end_date, presence: true,
                       date: { after: proc { Time.now + 1.month },
                               before: proc { Time.now + 1.year } }
  validate :period_must_be_valid

  def period_must_be_valid
    errors.add(:start_date, "start date can't be after end date") if start_date > end_date
  end
end
