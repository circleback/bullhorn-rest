module Bullhorn
module Rest
module Entities

module JobOrder
  extend Base

  define_methods(:owner_methods => true)

  def query_job_orders(options={})
    params = {:fields => '*', :count => '500', :orderBy => 'title'}.merge(options)
    path = "query/JobOrder"
    res = @conn.get path, params
    obj = decorate_response JSON.parse(res.body)
    attach_next_page obj, options, path, conn
  end

end

end
end
end