# frozen_string_literal: true

class Plant < ApplicationRecord
  belongs_to :garden
  validates :name, presence: true
end
