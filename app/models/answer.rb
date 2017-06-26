class Answer < ActiveRecord::Base
  belongs_to :users
  has_many :quizzes, dependent: :destroy
end
