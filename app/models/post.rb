class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 10}
    validates :summary, length: { maximum: 200 }
    validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
    validates_with PostValidator
end
