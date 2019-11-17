
# Packages
library(rtweet) # set Callback as http://127.0.0.1:1410 on Twitter App

# Enter you Twitter app info here 
consumer_key <- "  "
consumer_secret <- "  "
access_token <- "  "
access_secret <- "  "
appname = "  "

twitter_token <- create_token(
  app = appname,
  consumer_key = consumer_key,
  consumer_secret = consumer_secret,
  access_token = access_token,
  access_secret = access_secret)

# Search Tweets

# Example - Search for tweets from a single user
tweets <- search_tweets( "from:realDonaldTrump", n = 10000, include_rts = FALSE )
tweets <- flatten(tweets)
write.csv(tweets, paste0(Sys.Date(), "_Trump_tweets.csv"), row.names = FALSE)

# Example - Search for tweets on a topic
tweets <- search_tweets( "#canucks", n = 10000, include_rts = FALSE )
tweets <- flatten(tweets)
write.csv(tweets, paste0(Sys.Date(), "_Canucks_tweets.csv"), row.names = FALSE)

# Example - Stream tweets on keyword for 20 seconds
tweets <- stream_tweets("canada", timeout = 20)
tweets <- flatten(tweets)
write.csv(tweets, paste0(Sys.Date(), "_Canada_tweets.csv"), row.names = FALSE)
