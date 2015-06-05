require "sinatra"
require "pg"
require "pry"

def db_connection
  begin
    connection = PG.connect(dbname: "tim_blog")
    yield(connection)
  ensure
    connection.close
  end
end

get "/test" do
  erb :'home/test'

end

get "/" do
  erb :'home/index'
end

get "/about" do
 erb :'home/about'
end

get "/work" do
 erb :'home/work'
end

get "/contact" do
 erb :'home/contact'
end


