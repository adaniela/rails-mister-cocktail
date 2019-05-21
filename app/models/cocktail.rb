class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
end

# A cocktail has many doses
# A cocktail has many ingredients through doses
# When you delete a cocktail, you should delete associated doses
# (but not the ingredients as they can be linked to other cocktails).

# A cocktail must have a unique name.

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
