# load open-uri
require 'open-uri'

remote_base_url = "http://www.wikipedia.org/wiki"
remote_page_url = "Ada_Lovelace"
remote_full_url = "#{remote_base_url}/#{remote_page_url}"

puts "Downloading from #{remote_full_url}"
remote_data = open(remote_full_url).read

local_file_name = "#{remote_page_url}.html"
local_file = open(local_file_name, "w")

puts "Writing to #{local_file_name}"
local_file.write(remote_data)
local_file.close

