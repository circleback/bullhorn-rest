module Bullhorn
module Rest
module Entities

module Option
  extend Base

  def option(option_type, value='*', options={})    
    params = {count: '300'}.merge(options)
    path = "options/#{option_type}", params
    res = conn.get path
    Hashie::Mash.new JSON.parse(res.body)
  end
end

end
end
end