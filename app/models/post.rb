class Post < ApplicationRecord
  default_scope{where(delete_at: nil)}
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :comments

  def destroy
    update(delete_at: Time.now)
  end
end
