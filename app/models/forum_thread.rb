class ForumThread < ActiveRecord::Base
  has_many :replies
end
