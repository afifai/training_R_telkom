library(twitteR)


api_key = "FkjcKfSd8DV6QR60FADlOPfeo"
api_secret = "nlqVK5RKFmfSZBnqWl7TOHUaREIOGdeZWZejieHqN2VMum9jlW"
access_token = "2346250518-duTu5wH3YxwAPKxY67vmysZB9wPDZlav1Pq38PA"
access_token_secret = "U4wyPXsfawPtuaBEO43lo6KT3iYAHmWJPPZQCv2BXUszU"

setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

bandung = searchTwitter("bandung")

#bandung <- searchTwitter("crawl", n = 1000 , since = '2016-15-17')
bandung.df <- twListToDF(bandung)
write.csv(bandung.df,"crawl.csv")