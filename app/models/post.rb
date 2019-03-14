class Post < ApplicationRecord

  validates :title, presence: true
  validates :body, length: {minimum: 20}
  
end
