class ViewcounterController < ApplicationController

  def count
    url = params[:fullURL]
    Viewcounter.create(site_url: url)
  end

  def index
    
  end
end
