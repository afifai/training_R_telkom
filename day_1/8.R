library(twitteR)


api_key = "API Key"
api_secret = "API Secret"
access_token = "Access Token"
access_token_secret = "Access Token Secret"

setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

bandung = searchTwitter("bandung")

#bandung <- searchTwitter("crawl", n = 1000 , since = '2016-15-17')
bandung.df <- twListToDF(bandung)
write.csv(bandung.df,"crawl.csv")