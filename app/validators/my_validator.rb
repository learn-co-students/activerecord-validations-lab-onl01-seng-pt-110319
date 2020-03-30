class MyValidator < ActiveModel::Validator 


    def validate 
        if title == nil && !title.include?("Won't Believe" || "Secret" || "Top[number]" || "Guess")
            record.errors[:title] << 'Invalid input'
        end
    end
end

