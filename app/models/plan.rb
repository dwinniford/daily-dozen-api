class Plan < ApplicationRecord
    validates :title, presence: true
    has_many :recipes 

    def self.create_with_recipes(data)
        new_plan = self.create(title: data[:title], description: data[:description])
        data[:recipes].each do |r|
            new_plan.recipes.build(r)
        end
        new_plan.save 
        new_plan 
    end
end
