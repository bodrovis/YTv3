# == Schema Information
#
# Table name: videos
#
#  id           :integer          not null, primary key
#  link         :string(255)
#  title        :string(255)
#  published_at :datetime
#  duration     :string(255)
#  likes        :integer
#  dislikes     :integer
#  uid          :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Video < ActiveRecord::Base
  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  validates :link, presence: true, format: YT_LINK_FORMAT
end
