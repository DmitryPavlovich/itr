class Post < ApplicationRecord

  validates :title, presence: true
<<<<<<< HEAD
  validates :body, length: {minimum: 20}
  
=======
  validates :body, length: {minimum: 200}

>>>>>>> posts
end
