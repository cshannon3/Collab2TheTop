class Challenge < ApplicationRecord
    acts_as_taggable # Alias for acts_as_taggable_on :tags
    acts_as_taggable_on :skills
    
    has_many :entries
    validates :title, presence: true,
                    length: { minimum: 5 }
end
