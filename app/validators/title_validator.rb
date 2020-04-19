class TitleValidator < ActiveModel::Validator

  def validate(record)
    unless record.title.match?("Won't Believe")
      record.errors[:title] << "You're only allowed to have titles with the words Won't Believe, Secret, Top [number] and Guess in the database!"
    end
  end

end
