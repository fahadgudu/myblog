class Comment < ActiveRecord::Base
  validates_presence_of :user
  validates_presence_of :body
  belongs_to :target, :polymorphic => true
end
