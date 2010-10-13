require 'rubygems'
require 'sinatra'

CACHE_PERIOD = ONE_MONTH = 1 * 60 * 60 * 24 * 30

before do
  headers['Cache-Control'] = "public, max-age=#{CACHE_PERIOD}"  
end

get "/favicon.ico" do
end

get %r{/(.*)} do |path|
  File.open(File.join('public', path.gsub(/\/^/, ""), 'index.html'))  
end

run Sinatra::Application

