require 'nokogiri'
require 'open-uri'

# URL of the Wikipedia page
url = 'https://en.wikipedia.org/wiki/Web_scraping'

# Fetch the web page's HTML content
html_content = URI.open(url)

# Parse the HTML with Nokogiri
doc = Nokogiri::HTML(html_content)

# Select all <h2> elements on the page
h2_elements = doc.css('h2')

# Loop through the <h2> elements and print their text content
h2_elements.each do |h2|
  puts h2.text
end
