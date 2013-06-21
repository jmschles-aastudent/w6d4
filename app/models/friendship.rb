class Friendship < ActiveRecord::Base
  attr_accessible :friender_id, :friend_id

  belongs_to :friender, class_name: 'User' #, foreign_key: :friender_id
  belongs_to :friend, class_name: 'User' #, foreign_key: :friend_id

  validates :friender_id, :friend_id, presence: true
end
