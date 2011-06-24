require "rubygems"
require "bundler"
require 'sinatra/base'
Bundler.setup

class RackCacheDemoApp < Sinatra::Base

  get "/" do
    cache_control :public, :max_age => 5
    "Cached at #{Time.now.to_s}"
  end
end

run RackCacheDemoApp
