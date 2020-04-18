class PostValidator < ActiveModel::Validator
    def validate(record)
      baity = ["Won't Believe", "Secret", "Top [number]", "Guess"]
      if record.title
        unless baity.any?{|word| record.title.include?(word)}
          record.errors[:title] << "You call this clickbait?"
        end
      end
    end
  end