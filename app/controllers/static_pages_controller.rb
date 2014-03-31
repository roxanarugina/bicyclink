class StaticPagesController < ApplicationController
  def home
  end

  def places

    url = "https://api.jcdecaux.com/vls/v1/stations?contract=Paris&apiKey=73643b4f6d48a45860637093a01c457fe8401860"
    res = Net::HTTP.get_response(URI(url))
    json_velib = JSON.parse(res.body)
    @stations = []
    json_velib.each do |station|
      @stations << [station["position"]["lat"], station["position"]["lng"]]
    end


  end

  def events
  end

  def about
  end

  def contact
  end
end
