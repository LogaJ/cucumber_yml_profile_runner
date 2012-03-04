require 'sinatra'
require "#{Dir.pwd}/lib/application_helper" 

enable :sessions

get '/' do
  @list_of_profiles = Profiler.get_profiles_from_cucumber_yml_file
  
  erb :index
end

post '/results' do
  @test_runner = Profiler.run_tests params[:profile_selector]
  @test_results = Profiler.display_test_results

  erb :results
end
