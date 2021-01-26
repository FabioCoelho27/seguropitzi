module Api::V1
  class ApiController < ApplicationController
    include Authenticatable

    rescue_from StandardError do |exception|
      render json: { :error => exception.message }, :status => 500
    end
  end 
end
