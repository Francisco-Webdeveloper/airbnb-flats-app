require "open-uri"

class FlatsController < ApplicationController
  before_action :fetch_flats

  def index
    # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # @flats = JSON.parse(open(url).read)
    # raise
  end

  def show
    # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # @flats = JSON.parse(open(url).read)
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i }
  end

  private

  def fetch_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

end
