require 'open-uri'

start_year = 10
end_year = 15 

remote_base_url = "http://www.wikipedia.org/wiki"

(start_year..end_year).each do |int|
  # read from wikipedia
  remote_full_url = "#{remote_base_url}/#{int}"
  puts "Reading from: #{remote_full_url}"
  remote_website = open("#{remote_full_url}").read

  # save remote to disk
  local_file_name = "wiki-year-#{int}.html"
  puts "Writing to: #{local_file_name}"
  local_file = open(local_file_name, "w")
  local_file.write(remote_website)
  local_file.close
end
