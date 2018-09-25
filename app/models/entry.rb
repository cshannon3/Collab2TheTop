class Entry < ApplicationRecord
    belongs_to :challenge
    has_many :resources
end
