require 'open-uri'


remote_base_url = "http://ruby.bastardsbook.com/files/tweet-fetcher/tweets-data/"
remote_user_name = "USAGov"
additional_naming_scheme = "-tweets-page-"

# create combined file
combined_tweets = open("combined_tweets.xml", "w")

(1..10).each do |int|
  remote_full_url = "#{remote_base_url}#{remote_user_name}#{additional_naming_scheme}#{int}.xml"
  
  # read one page of tweets 
  puts "Downloading from: #{remote_full_url}"
  remote_tweets = open(remote_full_url).read

  # write to combined_tweets file
  combined_tweets.write(remote_tweets)

  #write to local file
  local_file_name = "USAGov-tweets-#{int}.xml"
  puts "Writing to: #{local_file_name}"

  local_file = open(local_file_name, "w")
  local_file.write(remote_tweets)
  local_file.close

  sleep(2)
end

# close combined file
combined_tweets.close
