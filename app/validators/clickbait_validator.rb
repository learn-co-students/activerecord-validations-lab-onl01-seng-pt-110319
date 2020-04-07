class ClickbaitValidator < ActiveModel::Validator
	def validate(record)
		if record.title != nil 
			unless record.title.include?("Won't Believe")
			record.errors[:title] << "Invalid"
			end
		end
	end
end