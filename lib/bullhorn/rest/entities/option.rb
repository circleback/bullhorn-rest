module Bullhorn
module Rest
module Entities

module Option
  extend Base

  def option(option_type, value='*', options={})    
    params = {count: '300'}.merge(options)
    path = "options/#{option_type}"
    res = conn.get path, params
    Hashie::Mash.new JSON.parse(res.body)
  end

  def options(options = {})
    params = {count: '300'}.merge(options)
    path = "options"
    res = conn.get path, params
    Hashie::Mash.new JSON.parse(res.body)
  end
end

end
end
end