class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 10 }
  validates :summary, length: { maximum: 299 }
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validate :clickbait

  def clickbait
    if !title.nil? && (!title.include?("You Won't" || "Secret" || "Top" || "Guess" ))
      errors.add(:clickbait, "Clickbait")
    end
  end
end
