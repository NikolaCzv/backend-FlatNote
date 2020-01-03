class Note < ApplicationRecord
    belongs_to :user

    has_many :tag_notes
    has_many :tags, through: :tag_notes
end
