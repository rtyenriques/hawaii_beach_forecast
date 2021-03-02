require_relative '../environment.rb'



class API
  beach_url = 'https://hawaiibeachsafety.com/rest/conditions.json'
  
   def self.get_beaches(url)
    value = HTTParty.get(url)
    value[0..24].each do |beach|
      Beach.new(
        beach['beach'],
        beach['island'],
        beach['shore'],
        beach['temp'],
        beach['weather'],
        beach['wind'],
        beach['surf']
      )
      end
    end
    API.get_beaches(beach_url)
  end


# API.get_beaches('https://hawaiibeachsafety.com/rest/conditions.json')

