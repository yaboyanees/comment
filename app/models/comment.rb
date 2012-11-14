class Comment < ActiveRecord::Base
belongs_to :user
belongs_to :listing
attr_accessible :content, :user_id, :listing_id
end
