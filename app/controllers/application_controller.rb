class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # TODO "prepend: true" -this MIGHT be added later
end
