class AdvertisementController < ApplicationController

  def new
    @title = "Submit"
    @cur_url = "advertisement/new"
  end

  def create
    begin
      Advertisement.create(ad_params(params))
      redirect_to "/"
    rescue => e
      puts e
    end
  end

  def ad_params(params)
    params.permit(:title, :lien_externe, :tag)
  end

end