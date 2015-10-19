class ParsingController < ApplicationController
    def handsome
       
        uri = URI("http://careerharbour.co.uk/")
        html_doc = Nokogiri::HTML(Net::HTTP.get(uri))
        @result = html_doc.css("span.website-subtitle")
    end
   
end