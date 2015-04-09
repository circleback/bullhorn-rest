module Bullhorn
module Rest
module Entities

module FastFind
  extend Base

  def fast_find(query, options={})
    params = { query: query}.merge(options)
    path = "find"
    res = conn.get path, params
    Hashie::Mash.new JSON.parse(res.body)
  end
end

end
end
end