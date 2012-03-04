class Profiler
  def self.get_profiles_from_cucumber_yml_file

    cucumber_yml_file = path_to_cucumber_yml_file
    profiles = []

    File.open(cucumber_yml_file) do |file|
      file.map do |line| 
        profiles << line.match(/\w+:/).to_s.gsub(/:/,'').gsub(/default/,'')
        profiles.delete_if(&:empty?)
      end
    end

    return profiles
  end

  def self.run_tests with_profile
    run_command = "cucumber -p #{with_profile}"

    system run_command
  end

  private
  def self.path_to_cucumber_yml_file
    current_directory = Dir.pwd
    yml_directory = current_directory.gsub(/\/lib/,'') + '/cucumber.yml'
  end
end
