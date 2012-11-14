class Listing < ActiveRecord::Base
attr_accessible :image, :name, :content, :desription, :address, :city, :state, :user_id, :remote_image_url  
mount_uploader :image, ImageUploader

belongs_to :user
has_many :comments

end
