class Author < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true #makes sure a name is input
    validates :phone_number, length: { minimum: 10 }

end
