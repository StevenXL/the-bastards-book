require 'rubygems'
require 'crack'

tweet_file_basename = "USAGov-tweets-"

(1..10).each do |page_num|
  tweet_filename = "#{tweet_file_basename}#{page_num}.xml"
  tweets_file = File.open(tweet_filename, "r")
  parsed_xml = Crack::XML.parse(tweets_file.read)

  tweets = parsed_xml["statuses"]
  tweets.each do |tweet|
    puts "Created at: #{tweet["created_at"]}"
    puts "Text: #{tweet["text"]}"
    puts "Retweet count: #{tweet["retweet_count"]}"
    puts '-'
  end
end
