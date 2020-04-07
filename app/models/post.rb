class Post < ActiveRecord::Base


    validates :title, presence: true
    validates :content, length: {minimum: 26}
    validates :summary, length: {maximum: 100}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :is_clickbait

    def is_clickbait 
       if title != nil && !title.include?("Won't Believe" || "Secret" || "Top[number]" || "Guess")
        errors.add(:title, "Error. This content is considered clickbait!")
       end
    end


end
