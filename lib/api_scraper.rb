# imports
require 'HTTParty'
require 'JSON'

# first, we need a Fetcher class to access various APIs
# this class should have two attributes with setters/getters:
#   -
# use HTTParty to access APIs
class Fetcher
  # constructor
  def initialize(uri)
    @uri = uri
    @response = ""
  end
  # request
  def request
    @response = HTTParty.get(@uri)
    return @response.to_s
  end
end

# next, we need a Model class to store our data, save the result, and encode itself into JSON.
class Model
  # constructor
  def initialize(data, destination_filename)
    @data = data
    @destination_filename = destination_filename
  end
  # save
  def save
    File.open(@destination_filename, "w+") do |file|
      file.write(@data)
    end
  end
end


# finally, we should open create a class that accepted two command line arguments
# the first should be the URI+Query Strings of the website we're targeting
# the second should be the name of the file we'd like our
#   using ARGV.each do|a|
#     puts "Argument: #{a}"
#   end
#  OR
#   v1 = ARGV[0]
#   v2 = ARGV[1]
#   puts v1
#   puts v2
class App
  #constructor
  def initialize
    @uri = ARGV[0]
    @destination_filename = ARGV[1]
  end
  def app_start
    fetcher = Fetcher.new(@uri)
    model = Model.new(fetcher.request(), @destination_filename)
    model.save()
  end
end


app = App.new()
app.app_start()
