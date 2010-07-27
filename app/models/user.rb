class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => {
    :thumb => ["50x50>", "png"],
    :medium => ["400x400>", "png"]
  }

  validates_presence_of :login
  validates_presence_of :name
end
