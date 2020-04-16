# frozen_string_literal: true

class Garden < ApplicationRecord
  belongs_to :users
  has_many :plants
end
