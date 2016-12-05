class Scraping

  def self.get_temples
    agent = Mechanize.new
    page = agent.get("http://www.88shikokuhenro.jp/map.html")
    temple_name = page.at('.area strong').inner_text
    address = page.at('.area p').inner_text

    temple = Temple.new(temple_name: temple_name, address: address)
    temple.save

    elements.each do |ele|
    puts ele.inner_text
  end
end

