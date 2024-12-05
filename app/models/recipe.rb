require "open-uri"

class Recipe < ApplicationRecord
  has_one_attached :photo
  after_save :make, if: -> { saved_change_to_name? || saved_change_to_ingredients? }

  private

  def make
    MakeRecipeJob.perform_later(self)
  end


end
