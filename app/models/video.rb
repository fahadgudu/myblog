class Video < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  has_many :comments, :as => :target, dependent: :destroy
  belongs_to :user
  mount_uploader :body, VideoUploader
end
