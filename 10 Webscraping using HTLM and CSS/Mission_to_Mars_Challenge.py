
### **Starter Code Starts Here**"
 # Import Splinter, BeautifulSoup, and Pandas\n",
from splinter import Browser
from bs4 import BeautifulSoup as soup
import pandas as pd
from webdriver_manager.chrome import ChromeDriverManager
 
# Set the executable path and initialize Splinter
executable_path = {'executable_path': ChromeDriverManager().install()}
browser = Browser('chrome', **executable_path, headless=False)

### Visit the NASA Mars News Site
# Visit the mars nasa news site
url = 'https://redplanetscience.com/'
browser.visit(url)

# Optional delay for loading the page
browser.is_element_present_by_css('div.list_text', wait_time=1)

# Convert the browser html to a soup object and then quit the browser
html = browser.html
news_soup = soup(html, 'html.parser')

slide_elem = news_soup.select_one('div.list_text')
slide_elem.find('div', class_='content_title')

# Use the parent element to find the first a tag and save it as `news_title`
news_title = slide_elem.find('div', class_='content_title').get_text()
news_title

# Use the parent element to find the paragraph text
news_p = slide_elem.find('div', class_='article_teaser_body').get_text()
news_p

#JPL Space Images Featured Image
# Visit URL
url = 'https://spaceimages-mars.com'
browser.visit(url)

# Find and click the full image button
full_image_elem = browser.find_by_tag('button')[1]
full_image_elem.click()

# Parse the resulting html with soup
html = browser.html
img_soup = soup(html, 'html.parser')
img_soup

# find the relative image url
img_url_rel = img_soup.find('img', class_='fancybox-image').get('src')
img_url_rel

# Use the base url to create an absolute url
img_url = f'https://spaceimages-mars.com/{img_url_rel}'
img_url

#Mars Facts
df = pd.read_html('https://galaxyfacts-mars.com')[0]
df.head()

df.columns=['Description', 'Mars', 'Earth']
df.set_index('Description', inplace=True)
df

df.to_html()

#D1: Scrape High-Resolution Mars’ Hemisphere Images and Titles¶
#Hemispheres

# 1. Open the browser and visit the URL with thumbnails of the images
url = 'https://marshemispheres.com/'
browser.visit(url)

# 2. Create a list of dictionaries to hold the images and titles.
hemisphere_image_urls = []

# html = browser.html
# hemi_soup = soup(html, 'html.parser')

# 1. Use browser to visit the URL 
url = 'https://marshemispheres.com/'
browser.visit(url)

# 2. Create a list to hold the images and titles.
hemisphere_image_urls = []

# 3. Write code to retrieve the image urls and titles for each hemisphere.
#tip1 Find the HTML tag that holds all the links to the full-resolution images,
#or find a common CSS element for the full-resolution image

#tip2: Using a for loop, iterate through the tags or CSS element.
for x in range(4):
    # Get a list of hemispheres by browsing through each article
    #browser.links.find_by_text('Hemisphere')[product].click()
    browser.find_by_css('a.product-item h3')[x].click()
    element=browser.find_link_by_text('Sample').first
        
    #tip3: Create an empty diction, hemisphere={}, inside the for loop
    hemisphere = {}  
           
    # Get Hemisphere Title
    title = browser.find_by_css('h2.title').text
    
    #Get image
    #img_url = browser.find_by_css('a.itemLink.product-item img')[0]['href']
    img_url=element['href']
        
    # Append Hemisphere Object to List
    hemisphere['img_url'] = img_url
    hemisphere['title'] = title
    hemisphere_image_urls.append(hemisphere)
        
    # Browse back to repeat
    browser.back()


# 4. Print the list that holds the dictionary of each image url and title.
hemisphere_image_urls

# 5. Quit the browser
#browser.quit()