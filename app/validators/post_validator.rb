class PostValidator<ActiveModel::Validator
    def validate (record)
        if !record.title.nil?
        unless record.title.include? ("Won't Believe"||"Secret"||"Top[number]"||"Guess")
       record.errors[:post]<<"Not clickbait!!"
        end
    end
    end

end