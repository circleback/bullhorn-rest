module Bullhorn
module Rest
module Entities

module Task
  extend Base

  define_methods

  def query_tasks(options={})
    params = {:fields => '*', :count => '500', :orderBy => 'dateEnd'}.merge(options)
    path = "query/Task"
    res = @conn.get path, params
    obj = decorate_response JSON.parse(res.body)
    attach_next_page obj, options, path, conn
  end

end

end
end
end