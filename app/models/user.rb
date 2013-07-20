class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, uniqueness: true
	has_many :comments
	has_many :posts
	has_many :subscriptions
	has_many :groups, through: :subscriptions
	has_one :status
	belongs_to :group
end


# class CreatePosts < ActiveRecord::Migration
#   def change
#     create_table :posts do |t|
#       t.integer :user_id
#       t.string :title
#       t.string :content

#       t.timestamps
#     end
#   end
# end
