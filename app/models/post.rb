class Post < ApplicationRecord

  validates :title, presence: true
  validates :summary, length: {minimum: 20, maximum:200}
  validates :body, length: {minimum: 300}

end
