class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :content, presence: true
	has_many :comments
	has_many :posts
	belongs_to :user
  attr_accessible :content, :title, :user_id
end
