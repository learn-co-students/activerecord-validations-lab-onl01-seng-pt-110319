class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w[Fiction NonFiction] }

  validate :is_clickbait

  def is_clickbait
    clickbait = ["Won't Believe", 'Secret', 'Top [number]', 'Guess']
    count = 0
      clickbait.each { |c| count += 1 if self.title.include?(c) if self.title }
    errors.add(:title, "isn't clickbaity.") if count == 0
    
  end
end
