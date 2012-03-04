require 'sinatra'
require "#{Dir.pwd}/lib/application_helper" 

get '/' do
  @list_of_profiles = Profiler.get_profiles_from_cucumber_yml_file

  erb :index
end
