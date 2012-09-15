class Api::DeliveriesController < ApplicationController
  protect_from_forgery :except => [:create]
  respond_to :json

  def create
    @parsed_json = JSON.parse(params)
  end
end