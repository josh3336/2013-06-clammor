class Subscription < ActiveRecord::Base
  # TODO Implement Subscription associations. See subscription_spec.rb for specification.
  attr_accessible :group_id, :user_id
  belongs_to :user
  belongs_to :group

  # TODO Implement a Subscription custom validation. See subscription_spec.rb for specification.
  
  def renew_date_is_valid_datetime
    # TODO Should validate that the renew_date column is a valid DateTime.  See subscription_spec.rb for more tips 
  end
end
