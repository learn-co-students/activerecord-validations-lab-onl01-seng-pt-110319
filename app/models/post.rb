class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) } 
    validate :not_clickbait
    
        def not_clickbait
            if !title.nil? && !title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
                errors.add(:not_clickbait, "Needs more clickbait!")
            end
        end

end
