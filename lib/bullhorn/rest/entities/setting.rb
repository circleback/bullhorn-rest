module Bullhorn
module Rest
module Entities

module Setting
  extend Base

  # define_methods(:immutable => true)

  define_method('settings') do |names = []|
	names = names.empty? ? '*' : names.join(',')
	path = "settings/#{names}"
	res = conn.get path, params
	Hashie::Mash.new JSON.parse(res.body)
  end

end

end
end
end