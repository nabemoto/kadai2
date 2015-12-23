class ViewcounterController < ApplicationController

  def counter
    url = params[:fullURL]
    Viewcounter.create(site_url: url)
    render text:'Ok'.to_json
  end

  def index
    @total_pv = Viewcounter.all.count #総PV数
    @site = Viewcounter.all
    @each_site = Viewcounter.group(:site_url).order('count_all desc').count #サイト毎のPV数
    end
end
