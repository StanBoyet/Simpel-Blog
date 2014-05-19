# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  type_id    :integer
#  user_id    :integer
#

class Post < ActiveRecord::Base
  belongs_to :type
  belongs_to :user

  acts_as_taggable
  
end
