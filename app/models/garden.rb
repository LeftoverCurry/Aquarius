# frozen_string_literal: true

class Garden < ApplicationRecord
  belongs_to :user
  has_many :plants, dependent: :destroy
  validates :name, presence: true
end
