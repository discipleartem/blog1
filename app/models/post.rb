class Post < ActiveRecord::Base
  # теперь при удалении поста будут удаляться и комментарии
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end
