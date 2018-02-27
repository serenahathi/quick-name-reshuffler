require 'sinatra'
require './lib/name_sample'
require './lib/lolhost'

class App < Sinatra::Base
  
  before do
    @random_name = NameSample.instance
    @lolhost = LolHost.instance
  end

  get "/" do
    erb(:index)
  end

  get("/lolhost") do
    @lolhost = LolHost.create.pick_lolhost
    erb(:lolhost)
  end

  post "/submit" do
    @random_name = NameSample.create(params[:name1], params[:name2], params[:name3], params[:name4], params[:name5])
    redirect("/result")
  end

  get("/result") do
    @random_name = @random_name.random_name
    erb(:result)
  end

end