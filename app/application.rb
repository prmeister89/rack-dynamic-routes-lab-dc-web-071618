class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if 
    else
      resp.write "Route not found"
      resp.status = 404
    resp.finish
  end