class Comment < ActiveRecord::Base
	validates :content, presence: true
	attr_accessible :content
	belongs_to :user
	belongs_to :post
end
