class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, uniqueness: true, presence: true
end

# An ingredient has many doses
# You can't delete an ingredient if it used by at least one cocktail.???

# An ingredient must have a unique name.

# # app/models/restaurant.rb
# class Restaurant < ApplicationRecord
#   has_many :reviews, dependent: :destroy
# end
# # app/models/review.rb
# class Review < ApplicationRecord
#   belongs_to :restaurant
# end

# class Restaurant < ApplicationRecord
#   validates :name, uniqueness: true, presence: true
#   validates :address, presence: true
#   validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
# end
