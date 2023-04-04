class Store < ActiveRecord::Base
  has_many :employees
  #active record's validations
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  #custom validation
  validate :must_carry_mens_or_womens_apparel
  #in rails methods are also symbols so you have to call them with a colon in front
  def must_carry_mens_or_womens_apparel
    if (!mens_apparel && !womens_apparel) || (mens_apparel == false && womens_apparel == false)
      errors.add(:must_carry_mens_or_womens_apparel, "store must carry apparel")
    end
  end
end
