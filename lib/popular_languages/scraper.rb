class Scraper

  def scrape_page
    html = open("https://en.wikipedia.org/wiki/Programming_languages_used_in_most_popular_websites")
    doc = Nokogiri::HTML(html)
#inding.pry
  end

  def scrape_details
    tbody = scrape_page.search("tbody tr")
    tbody_slice= tbody.slice(1, tbody.length)

    tbody_slice.each do |site|
      #if site.css("td")[0].css("a")[0].text != nil
        name = site.css("td")[0].css("a")[0].text #the last element might be the footer cause issue.
        Website.new(name)

      #end
    #binding.pry
    end

  end #end of method

end #end of class
