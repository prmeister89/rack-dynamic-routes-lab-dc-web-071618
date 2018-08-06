class Application
  
  @@items = []
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      if item == nil
        resp.write "Item not found"
      else
      item_name = req.path.split("/items/").last
      item = @@items.find{|i| i.name == item_name}
      
      resp.write item.price
    elsif item == nil
    
    
    else
      resp.write "Route not found"
      resp.status = 404
    end
    
    resp.finish
  end
