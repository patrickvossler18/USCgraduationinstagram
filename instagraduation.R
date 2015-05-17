setwd("/Users/patrick/Dropbox/Spring 2015/Datasets/instagrad")

app_name <- "uscgradtest"
client_id <- "4a13d17061a8466d8dcfe7409e0b4877"
client_secret <- "e53ad127b8124589a38ce0abdc344ffb"
scope = "basic"

instagram <- oauth_endpoint(
  authorize = "https://api.instagram.com/oauth/authorize",
  access = "https://api.instagram.com/oauth/access_token")
myapp <- oauth_app(app_name, client_id, client_secret)

ig_oauth <- oauth2.0_token(instagram, myapp,scope="basic", type = "application/x-www-form-urlencoded",cache=FALSE)
tmp <- strsplit(toString(names(ig_oauth$credentials)), '"')
token <- tmp[[1]][4]