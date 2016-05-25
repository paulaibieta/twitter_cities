class TwitterApi
  CITIES = {"phoenix": 2471390, "new york": 2459115, "los angeles": 2442047, "chicago": 2379574, "san francisco": 2487956, "austin": 2357536, "boston": 2367105, "seattle": 2490383, "portland": 2475687, "miami": 2450022}

  def self.response city 
    json_data = HTTParty.get("https://api.twitter.com/1.1/trends/place.json?id=#{TwitterApi.find_city_code(city)}",
      {:headers => {'Authorization' => 'Bearer AAAAAAAAAAAAAAAAAAAAAJ9SvAAAAAAAPYENC63ApJKXKZYtKNSL7NGQanU%3DdzBEgg4bcFlqPQk5h7alzEbDNDO7yft6F64uVEJwC4Zvosye6U'}})
  end 

  def self.find_city_code city
    cities_correct = CITIES.with_indifferent_access
    cities_correct[city]
  end

  def self.search_response query
    json_data = HTTParty.get("https://api.twitter.com/1.1/search/tweets.json?q=#{query}",
      {:headers => {'Authorization' => 'Bearer AAAAAAAAAAAAAAAAAAAAAJ9SvAAAAAAAPYENC63ApJKXKZYtKNSL7NGQanU%3DdzBEgg4bcFlqPQk5h7alzEbDNDO7yft6F64uVEJwC4Zvosye6U'}})
  end 

end 
