# frozen_string_literal: true

# Sets general application routing
class ApplicationController < ActionController::Base
  # Redirects after login to user's gardens
  def after_sign_in_path_for(_resource)
    gardens_path
  end
end
