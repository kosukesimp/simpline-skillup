class Post < ActiveRecord::Base
  has_many :videos
  accepts_nested_attributes_for :videos, allow_destroy: true
end
