# **World Weather Analysis**

## **Background**

Jack loves the PlanMyTrip app. Beta testers love it too. And, as with any new product, they’ve recommended a few changes to take the app to the next level. Specifically, they recommend adding the weather description to the weather data you’ve already retrieved in this module. Then, you'll have the beta testers use input statements to filter the data for their weather preferences, which will be used to identify potential travel destinations and nearby hotels. From the list of potential travel destinations, the beta tester will choose four cities to create a travel itinerary. Finally, using the Google Maps Directions API, you will create a travel route between the four cities as well as a marker layer map.

### **Data Source:**
OpenWeatherMap API, Google Map Places API and Google Map Directions API

### **Software:**
Python 3.7.10 , Jupyter Notebook

## **Summary of Challenge Assignment**

### Deliverable 1: Obtain weather data
-Generate a set of 2,000 random latitudes and longitudes, retrieve the nearest city, and perform an API call with the OpenWeatherMap. 
-Retrieve all of the following information from the API call for each city:

  -Latitude and longitude
  -Maximum temperature
  -Percent humidity
  -Percent cloudiness
  -Wind speed
  -Weather description (for example, clouds, fog, light rain, clear sky)
  
### Deliverable 2: Create a customer Travel Destinations Map
-Create a new DataFrame containing the updated weather data, which will use customer perference inputs to identify potential travel destinations
-Generate a marker layer map with pop-up markers

<img width="487" alt="WeatherPy_travel_map_markers" src="https://user-images.githubusercontent.com/89538802/135737294-c56c1861-c6c5-454c-a505-a123358d2baa.PNG">


### Deliverable 3: Create a Travel Itinerary Map
-Create a travel itinerary from Google Directions APIs showing a route for 4 chosen cities with marker layer map with pop-up marker for each city

<img width="479" alt="WeatherPy_travel_map" src="https://user-images.githubusercontent.com/89538802/135737292-10e2ad35-3fc0-41b3-b082-3521dbdb1923.PNG">
