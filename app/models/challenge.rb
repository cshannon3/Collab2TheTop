class Challenge < ApplicationRecord
    
    has_many :entries
    validates :title, presence: true,
                    length: { minimum: 5 }
end
