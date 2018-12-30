class CLI

  def start
    puts "start CLI file"
    Scraper.new.scrape_details
    menu
    # Website.all.each do |site|
    #   puts "#{site.name}"
    # end
    puts "Program ended"
  end

  def menu
    Website.all
    #binding.pry
  end
end
