class Tag < ApplicationRecord
    has_many :tag_notes
    has_many :notes, through: :tag_notes
end
