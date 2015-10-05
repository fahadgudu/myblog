class Post < ActiveRecord::Base
  validates :title, presence: true,
            length: { minimum: 5 }
  validates :body, presence: true,
            length: { minimum: 5 }
  has_many :comments, :as => :target, dependent: :destroy
  belongs_to :user
  mount_uploader :image, ImageUploader

end
