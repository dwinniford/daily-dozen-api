class Recipe < ApplicationRecord
    validates :label, presence: true
    validates :source, presence: true
end
