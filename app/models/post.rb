class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :clickbaity

    def clickbaity
        if !title.nil? && (!title.include?("You Won't" || "Secret" || "Top" || "Guess")) 
            errors.add(:clickbaity, "Title is not clickbaity enough.")
        end
    end
end
