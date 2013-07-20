class Group < ActiveRecord::Base
  attr_accessible :motto, :name
  validates :name, uniqueness: true
  validates :motto, presence: true
  has_many :subscriptions
  has_many :users, through: :subscriptions
  # should have many users through subscriptions
end
