require 'rubygems'
require 'sinatra'

get "/favicon.ico" do
end

get %r{/(.*)} do |path|
  File.open(File.join('public', path.gsub(/\/^/, ""), 'index.html'))  
end

run Sinatra::Application

