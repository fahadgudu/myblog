class Event < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body,
  has_many :comments, :as => :target
  has_one :image_attach, :as =>  :assetable, :dependent =>  :destroy
  accepts_nested_attributes_for :image_attach
end
