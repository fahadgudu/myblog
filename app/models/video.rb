class Video < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :video_attach
  has_many :comments, :as => :target, dependent: :destroy
  has_one :video_attach, :as =>  :assetable, :dependent =>  :destroy
  accepts_nested_attributes_for :video_attach
end
