class TitleValidator < ActiveModel::Validator

    def validate(record)
        @values = ["Won't Believe", "Secret", "Top", "Guess"]
        unless !record.title.nil? && @values.any?{|value| record.title.include?(value||value.downcase)}
            record.errors[:title] << "Your title must contain 'Won't Believe', 'Secret', 'Top #' or 'Guess'. Without it is not clickbaity!"
        end
    end
end