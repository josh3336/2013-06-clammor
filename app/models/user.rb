class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base
	attr_accessible :name, :email
	validates :name, presence: true
	validates :email, uniqueness: true, email: true
	has_many :comments
	has_many :posts
	has_many :subscriptions
	has_many :groups, through: :subscriptions
	has_one :status
	belongs_to :group
  after_save :save
    def save
      self.status  ||= '"I Just joined Clammor!"'           #will set the default value only if it's nil
    	puts 'status', self.status, 'status'
    end
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
