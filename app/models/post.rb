class Post < ActiveRecord::Base
  validates :title, presence: true,
            length: { minimum: 5 }
  validates :body, presence: true,
            length: { minimum: 5 }
  has_many :comments, :as => :target
  has_one :image, :as =>  :assetable, :dependent =>  :destroy
  accepts_nested_attributes_for :image
end
