class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end

# A dose belongs to an ingredient
# A dose belongs to a cocktail

# A dose must have a description, a cocktail and an ingredient, and [cocktail,
# ingredient] pairings should be unique.??

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
