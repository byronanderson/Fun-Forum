class Reply < ActiveRecord::Base
  belongs_to :thread, class_name: "ForumThread", foreign_key: "forum_thread_id"
  belongs_to :user
end
