class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, uniqueness: true
	has_many :comments
	has_many :posts
	has_one :status
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
