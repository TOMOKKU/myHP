class Post < ApplicationRecord
  validates :content, {presence: true, length:{maximum: 140}}

  def self.search(keyword)
     where(["content like ?","%#{keyword}%"])
  end
end
