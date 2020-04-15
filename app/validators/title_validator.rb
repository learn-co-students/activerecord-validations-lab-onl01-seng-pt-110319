class TitleValidator < ActiveModel::Validator
    def validate(record)
        valid_titles = [
            /Won't Believe/i,
            /Secret/i,
            /Top [0-9]*/i,
            /Guess/i
        ]

        if valid_titles.none? { |valid_title| valid_title.match record.title }
            record.errors[:title] << "Not a Click-Baity title!"
        end
    end
end