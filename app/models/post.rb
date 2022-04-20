class Post < ApplicationRecord
  validates :content, {presence: true, length{maximam: 140}}

  def self.search(keyword)
     where(["content like ?","%#{keyword}%"])
  end
end
