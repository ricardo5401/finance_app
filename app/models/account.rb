class Account < ApplicationRecord
    belongs_to :person
    has_many :activities
end
