class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, presence: true, length: { minimum: 3, maximum: 15 }, on: :update
  validates :last_name, presence: true, length: { minimum: 3, maximum: 15 }, on: :update
  has_many :assignments, dependent: :restrict_with_error
  has_many :tasks, through: :assignments
end
