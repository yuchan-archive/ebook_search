require 'open-uri'
require 'json'

class HomeController < ApplicationController
  def index
    url = "https://app.rakuten.co.jp/services/api/Kobo/EbookSearch/20140811?format=json&keyword=rails&affiliateId=131e0f83.befaf501.131e0f84.ef6d0def&sort=sales&applicationId=" + ENV["RAKUTEN_API_KEY"]
    raw = open(url)
    data = JSON.parse(raw.read)
    @result = data["Items"]
  end
end
