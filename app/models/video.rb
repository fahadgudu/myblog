class Video < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  has_many :comments, dependent: :destroy
  belongs_to :user
end
